
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {void* enabled; void* pending; int time; } ;
struct pl031_local {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_IMSC ;
 scalar_t__ RTC_MR ;
 scalar_t__ RTC_RIS ;
 void* __raw_readl (scalar_t__) ;
 struct pl031_local* dev_get_drvdata (struct device*) ;
 int rtc_time_to_tm (void*,int *) ;

__attribute__((used)) static int pl031_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct pl031_local *ldata = dev_get_drvdata(dev);

 rtc_time_to_tm(__raw_readl(ldata->base + RTC_MR), &alarm->time);
 alarm->pending = __raw_readl(ldata->base + RTC_RIS);
 alarm->enabled = __raw_readl(ldata->base + RTC_IMSC);

 return 0;
}
