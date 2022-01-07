
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t EPERM ;
 int fan_control_allowed ;
 unsigned long fan_watchdog_maxinterval ;
 int fan_watchdog_reset () ;
 scalar_t__ parse_strtoul (char const*,int,unsigned long*) ;
 int tpacpi_disclose_usertask (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t fan_fan_watchdog_store(struct device_driver *drv,
          const char *buf, size_t count)
{
 unsigned long t;

 if (parse_strtoul(buf, 120, &t))
  return -EINVAL;

 if (!fan_control_allowed)
  return -EPERM;

 fan_watchdog_maxinterval = t;
 fan_watchdog_reset();

 tpacpi_disclose_usertask("fan_watchdog", "set to %lu\n", t);

 return count;
}
