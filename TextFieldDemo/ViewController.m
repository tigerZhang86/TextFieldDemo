//
//  ViewController.m
//  TextFieldDemo
//
//  Created by tigerzhang on 16/8/11.
//  Copyright © 2016年 tiger. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong, nullable) UITextField *textTF;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"WTF";
    
    self.view.backgroundColor  = [UIColor whiteColor];
    
    [self.view addSubview:self.textTF];

    self.textTF.frame = CGRectMake(20, 100, [UIScreen mainScreen].bounds.size.width - 40, 30);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (UITextField *)textTF {
    if (!_textTF) {
        _textTF = [[UITextField alloc] init];
        _textTF.backgroundColor = [UIColor lightGrayColor];
        
        // comment removed it's OK when rootViewController is UINavigationController
//        _textTF.borderStyle = UITextBorderStyleRoundedRect;
        
        _textTF.placeholder = @"What The Fuck!";
    }
    return _textTF;
}

@end
