
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int fan_watchdog_maxinterval ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t fan_fan_watchdog_show(struct device_driver *drv,
         char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%u\n", fan_watchdog_maxinterval);
}
