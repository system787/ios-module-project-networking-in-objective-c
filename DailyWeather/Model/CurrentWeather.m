//
//  CurrentWeather.m
//  DailyWeather
//
//  Created by Vincent Hoang on 7/15/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CurrentWeather.h"

@implementation CurrentWeather

- (instancetype)initWithTime:(NSTimeInterval *)time
                     summary:(NSString *)summary
                        icon:(NSString *)icon
           precipProbability:(NSNumber *)precipProbability
             precipIntensity:(NSNumber *)precipIntensity
         apparentTemperature:(NSNumber *)apparentTemperature
                    humidity:(NSNumber *)humidity
                    pressure:(NSNumber *)pressure
                   windSpeed:(NSNumber *)windSpeed
                 windBearing:(NSNumber *)windBearing
                     uvIndex:(NSNumber *)uvIndex {
    self = [super init];
    
    if (self) {
        _time = time;
        _summary = [summary copy];
        _icon = [icon copy];
        _precipProbability = precipProbability;
        _precipIntensity = precipIntensity;
        _apparentTemperature = apparentTemperature;
        _humidity = humidity;
        _pressure = pressure;
        _windSpeed = windSpeed;
        _windBearing = windBearing;
        _uvIndex = uvIndex;
    }
    
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    
    NSNumber *time = dictionary[@"time"];
    NSString *summary = dictionary[@"summary"];
    NSString *icon = dictionary[@"icon"];
    NSNumber *precipProbability = dictionary[@"precipProbability"];
    NSNumber *precipIntensity = dictionary[@"precipIntensity"];
    NSNumber *apparentTemperature = dictionary[@"apparentTemperature"];
    NSNumber *humidity = dictionary[@"humidity"];
    NSNumber *pressure = dictionary[@"pressure"];
    NSNumber *windSpeed = dictionary[@"windSpeed"];
    NSNumber *windBearing = dictionary[@"windBearing"];
    NSNumber *uvIndex = dictionary[@"uvIndex"];
    
    if (!time) {
        return nil;
    }
    
    NSTimeInterval timeInterval = [time floatValue] / 1000.0;
    
    if ([summary isKindOfClass:[NSNull class]]) {
        summary = nil;
    }
    
    if ([icon isKindOfClass:[NSNull class]]) {
        icon = nil;
    }
    
    if ([precipProbability isKindOfClass:[NSNull class]]) {
        precipProbability = nil;
    }
    
    if ([precipIntensity isKindOfClass:[NSNull class]]) {
        precipIntensity = nil;
    }

    if ([apparentTemperature isKindOfClass:[NSNull class]]) {
        apparentTemperature = nil;
    }
    
    if ([humidity isKindOfClass:[NSNull class]]) {
        humidity = nil;
    }
    
    if ([pressure isKindOfClass:[NSNull class]]) {
        pressure = nil;
    }
    
    if ([windSpeed isKindOfClass:[NSNull class]]) {
        windSpeed = nil;
    }
    
    if ([windBearing isKindOfClass:[NSNull class]]) {
        windBearing = nil;
    }
    
    if ([uvIndex isKindOfClass:[NSNull class]]) {
        uvIndex = nil;
    }
    
    return [self initWithTime:&timeInterval
                      summary:summary
                         icon:icon
            precipProbability:precipProbability
              precipIntensity:precipIntensity
          apparentTemperature:apparentTemperature
                     humidity:humidity
                     pressure:pressure
                    windSpeed:windSpeed
                  windBearing:windBearing
                      uvIndex:uvIndex];
}

@end
