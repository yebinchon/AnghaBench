
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct rtc_wkalrm {int time; } ;
struct device {int dummy; } ;


 scalar_t__ HW_RTC_ALARM ;
 int __raw_writel (unsigned long,scalar_t__) ;
 struct stmp3xxx_rtc_data* dev_get_drvdata (struct device*) ;
 int rtc_tm_to_time (int *,unsigned long*) ;

__attribute__((used)) static int stmp3xxx_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
{
 unsigned long t;
 struct stmp3xxx_rtc_data *rtc_data = dev_get_drvdata(dev);

 rtc_tm_to_time(&alm->time, &t);
 __raw_writel(t, rtc_data->io + HW_RTC_ALARM);
 return 0;
}
