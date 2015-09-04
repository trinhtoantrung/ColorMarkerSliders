//
//  ViewController.swift
//  ColorMarkerSliders
//
//  Created by  Trung Trinh on 9/4/15.
//  Copyright (c) 2015 Trung Trinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var viewColor: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redSlider.setValue(0, animated: false)
        greenSlider.setValue(0, animated: false)
        blueSlider.setValue(0, animated: false)
        viewColor.backgroundColor = UIColor.blackColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func modifyColor(sender: UISlider) {
        println("change value")
        let r: CGFloat = CGFloat(self.redSlider.value)
        let g: CGFloat = CGFloat(self.greenSlider.value)
        let b: CGFloat = CGFloat(self.blueSlider.value)
        
        viewColor.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1.0)
    }

}

