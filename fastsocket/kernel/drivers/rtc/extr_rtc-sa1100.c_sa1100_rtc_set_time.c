
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 unsigned long RCNR ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int sa1100_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long time;
 int ret;

 ret = rtc_tm_to_time(tm, &time);
 if (ret == 0)
  RCNR = time;
 return ret;
}
