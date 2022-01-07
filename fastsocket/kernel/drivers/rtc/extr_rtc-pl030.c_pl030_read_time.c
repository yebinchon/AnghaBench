
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct pl030_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_DR ;
 struct pl030_rtc* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time_to_tm (int ,struct rtc_time*) ;

__attribute__((used)) static int pl030_read_time(struct device *dev, struct rtc_time *tm)
{
 struct pl030_rtc *rtc = dev_get_drvdata(dev);

 rtc_time_to_tm(readl(rtc->base + RTC_DR), tm);

 return 0;
}
