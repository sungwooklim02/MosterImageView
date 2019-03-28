//
//  ViewController.swift
//  MosterImageView
//
//  Created by D7703_27 on 2019. 3. 28..
//  Copyright © 2019년 D7703_27. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var monsterImage: UIImageView!
    
    @IBOutlet weak var lblCount: UILabel!
    
    var count = 1;
    var sw = true;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    @IBAction func btnChange(_ sender: Any) {
        
        monsterImage.image = UIImage(named: "frame\(count).png")
        //lblCount.text = String(count);
        lblCount.text = "frame\(count).png"
        
        if (sw == true){
            count += 1;
            if(count == 6){
                sw = false;
            }
        }
        if (sw == false){
            count -= 1;
            if(count == 1){
                sw = true;
            }
        }
        
    }
    

}

