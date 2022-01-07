
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_LR ;
 int __raw_writel (unsigned long,scalar_t__) ;
 struct pl031_local* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int pl031_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long time;
 struct pl031_local *ldata = dev_get_drvdata(dev);

 rtc_tm_to_time(tm, &time);
 __raw_writel(time, ldata->base + RTC_LR);

 return 0;
}
