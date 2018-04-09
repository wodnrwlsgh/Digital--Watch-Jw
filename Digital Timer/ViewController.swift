//
//  ViewController.swift
//  Digital Timer
//
//  Created by 김종현 on 2018. 4. 4..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerSwitch: UISwitch!
    @IBOutlet weak var timeLabel: UILabel!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timerSwitch.setOn(false, animated: true)
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EEE"
        timeLabel.text = formatter.string(from: date)
    }
    @IBAction func timerStart(_ sender: Any) {
        if timerSwitch.isOn == true {
            myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
        }else {
            myTimer.invalidate()
        }
    }
    
}

