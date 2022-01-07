
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 unsigned int RTC_BATT_BAD ;
 unsigned int get_rtc_time (struct rtc_time*) ;
 int rtc_valid_tm (struct rtc_time*) ;

__attribute__((used)) static int generic_get_time(struct device *dev, struct rtc_time *tm)
{
 unsigned int ret = get_rtc_time(tm);

 if (ret & RTC_BATT_BAD)
  return -EOPNOTSUPP;

 return rtc_valid_tm(tm);
}
