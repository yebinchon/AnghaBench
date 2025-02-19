
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int tm_year; int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_wday; } ;
struct device {int dummy; } ;


 int bin2bcd (int) ;
 int max6902_set_reg (struct device*,int,int) ;

__attribute__((used)) static int max6902_set_time(struct device *dev, struct rtc_time *dt)
{
 dt->tm_year = dt->tm_year + 1900;


 max6902_set_reg(dev, 0xF, 0);

 max6902_set_reg(dev, 0x01, bin2bcd(dt->tm_sec));
 max6902_set_reg(dev, 0x03, bin2bcd(dt->tm_min));
 max6902_set_reg(dev, 0x05, bin2bcd(dt->tm_hour));

 max6902_set_reg(dev, 0x07, bin2bcd(dt->tm_mday));
 max6902_set_reg(dev, 0x09, bin2bcd(dt->tm_mon + 1));
 max6902_set_reg(dev, 0x0B, bin2bcd(dt->tm_wday));
 max6902_set_reg(dev, 0x0D, bin2bcd(dt->tm_year % 100));
 max6902_set_reg(dev, 0x13, bin2bcd(dt->tm_year / 100));






 max6902_set_reg(dev, 0xF, 0x80);

 return 0;
}
