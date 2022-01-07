
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int EOPNOTSUPP ;
 scalar_t__ set_rtc_time (struct rtc_time*) ;

__attribute__((used)) static int generic_set_time(struct device *dev, struct rtc_time *tm)
{
 if (set_rtc_time(tm) < 0)
  return -EOPNOTSUPP;

 return 0;
}
