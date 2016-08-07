//
//  BottomLineLabel.m
//  VHBoomMenuButton
//
//  Created by 黄伟平 on 16/8/1.
//  Copyright © 2016年 黄伟平. All rights reserved.
//

#import "BottomLineLabel.h"

static const CGFloat lineHeight = 0.25f;

@implementation BottomLineLabel

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    
    CGContextSetLineWidth(context, lineHeight);
    
    CGContextMoveToPoint(context, 0.0f, self.frame.size.height - lineHeight);
    
    CGContextAddLineToPoint(context, self.frame.size.width, self.frame.size.height - lineHeight);
    
    CGContextStrokePath(context);
}

- (void)sizeToFit
{
    [super sizeToFit];
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, self.frame.size.height + 30);
}

@end
