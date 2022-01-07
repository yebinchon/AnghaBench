
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_wkalrm {int time; } ;
struct pl030_rtc {scalar_t__ base; } ;
struct device {int dummy; } ;


 scalar_t__ RTC_MR ;
 struct pl030_rtc* dev_get_drvdata (struct device*) ;
 int readl (scalar_t__) ;
 int rtc_time_to_tm (int ,int *) ;

__attribute__((used)) static int pl030_read_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct pl030_rtc *rtc = dev_get_drvdata(dev);

 rtc_time_to_tm(readl(rtc->base + RTC_MR), &alrm->time);
 return 0;
}
