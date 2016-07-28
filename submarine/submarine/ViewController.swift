//
//  ViewController.swift
//  submarine
//
//  Created by zhangyang on 6/27/16.
//  Copyright © 2016 ___ZHANGYANG___. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {

    var webView: WKWebView
    
  
    
    required init?(coder aDecoder: NSCoder) {
        self.webView = WKWebView(frame: CGRectMake(0, 0, 320, 568))
        super.init(coder: aDecoder)
        self.webView.navigationDelegate = self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(webView)
        
        webView.translatesAutoresizingMaskIntoConstraints = false
        let height = NSLayoutConstraint(item: webView, attribute: .Height, relatedBy: .Equal, toItem: self.view, attribute: .Height, multiplier: 1, constant:0)
        let width = NSLayoutConstraint(item: webView, attribute: .Width, relatedBy: .Equal, toItem: self.view, attribute: .Width, multiplier: 1, constant: 0)
        view.addConstraints([height, width])
        
        
        webView.loadRequest(NSURLRequest(URL:NSURL(string:"https://www.baidu.com")!))
        
        
       
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

