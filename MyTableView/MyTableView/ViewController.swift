//
//  ViewController.swift
//  MyTableView
//
//  Created by xiaobo on 15/10/5.
//  Copyright © 2015年 xiaobo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var 餐馆 = ["川香麻辣烫","乌山烤鱼","Starbucks","小肥羊","贺野日本料理","湘乐汇","蜀记","Coasta Coffee","DC冰激凌","哈根达斯","二人转烧烤"]
    
    //表格的区块里有多少个单元格
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 餐馆.count
    }
    
    //表格相应位置的单元格，显示哪些内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = 餐馆[indexPath.row]
        cell.imageView?.image = UIImage(named: "restaurant")
        
        return cell 
    }
    
    //隐藏状态条
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

