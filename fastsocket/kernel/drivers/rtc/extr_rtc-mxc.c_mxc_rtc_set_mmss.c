
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int MXC_RTC_TIME ;
 unsigned long get_alarm_or_time (struct device*,int ) ;
 int set_alarm_or_time (struct device*,int ,unsigned long) ;

__attribute__((used)) static int mxc_rtc_set_mmss(struct device *dev, unsigned long time)
{

 do {
  set_alarm_or_time(dev, MXC_RTC_TIME, time);
 } while (time != get_alarm_or_time(dev, MXC_RTC_TIME));

 return 0;
}
