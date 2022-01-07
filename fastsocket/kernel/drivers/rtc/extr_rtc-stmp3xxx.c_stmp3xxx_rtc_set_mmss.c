
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmp3xxx_rtc_data {scalar_t__ io; } ;
struct device {int dummy; } ;


 scalar_t__ HW_RTC_SECONDS ;
 int __raw_writel (unsigned long,scalar_t__) ;
 struct stmp3xxx_rtc_data* dev_get_drvdata (struct device*) ;
 int stmp3xxx_wait_time (struct stmp3xxx_rtc_data*) ;

__attribute__((used)) static int stmp3xxx_rtc_set_mmss(struct device *dev, unsigned long t)
{
 struct stmp3xxx_rtc_data *rtc_data = dev_get_drvdata(dev);

 __raw_writel(t, rtc_data->io + HW_RTC_SECONDS);
 stmp3xxx_wait_time(rtc_data);
 return 0;
}
