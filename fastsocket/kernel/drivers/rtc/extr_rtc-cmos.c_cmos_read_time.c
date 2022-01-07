
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_time {int dummy; } ;
struct device {int dummy; } ;


 int get_rtc_time (struct rtc_time*) ;

__attribute__((used)) static int cmos_read_time(struct device *dev, struct rtc_time *t)
{




 get_rtc_time(t);
 return 0;
}
