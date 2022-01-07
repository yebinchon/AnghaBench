
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int ps3_os_area_set_rtc_diff (scalar_t__) ;
 scalar_t__ read_rtc () ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int ps3_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long now;

 rtc_tm_to_time(tm, &now);
 ps3_os_area_set_rtc_diff(now - read_rtc());
 return 0;
}
