
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ HW_RTC_SECONDS ;
 int __raw_readl (scalar_t__) ;
 struct stmp3xxx_rtc_data* dev_get_drvdata (struct device*) ;
 int rtc_time_to_tm (int ,struct rtc_time*) ;
 int stmp3xxx_wait_time (struct stmp3xxx_rtc_data*) ;

__attribute__((used)) static int stmp3xxx_rtc_gettime(struct device *dev, struct rtc_time *rtc_tm)
{
 struct stmp3xxx_rtc_data *rtc_data = dev_get_drvdata(dev);

 stmp3xxx_wait_time(rtc_data);
 rtc_time_to_tm(__raw_readl(rtc_data->io + HW_RTC_SECONDS), rtc_tm);
 return 0;
}
