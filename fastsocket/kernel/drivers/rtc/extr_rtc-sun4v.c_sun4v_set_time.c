
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int hypervisor_set_time (unsigned long) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;

__attribute__((used)) static int sun4v_set_time(struct device *dev, struct rtc_time *tm)
{
 unsigned long secs;
 int err;

 err = rtc_tm_to_time(tm, &secs);
 if (err)
  return err;

 return hypervisor_set_time(secs);
}
