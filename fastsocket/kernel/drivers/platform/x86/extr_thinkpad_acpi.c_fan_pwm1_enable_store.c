
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOSYS ;
 int ENXIO ;
 int TPACPI_FAN_LAST_LEVEL ;
 int TP_EC_FAN_AUTO ;
 int TP_EC_FAN_FULLSPEED ;
 int fan_set_level_safe (int) ;
 int fan_watchdog_reset () ;
 scalar_t__ parse_strtoul (char const*,int,unsigned long*) ;
 int tpacpi_disclose_usertask (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t fan_pwm1_enable_store(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 unsigned long t;
 int res, level;

 if (parse_strtoul(buf, 2, &t))
  return -EINVAL;

 tpacpi_disclose_usertask("hwmon pwm1_enable",
   "set fan mode to %lu\n", t);

 switch (t) {
 case 0:
  level = TP_EC_FAN_FULLSPEED;
  break;
 case 1:
  level = TPACPI_FAN_LAST_LEVEL;
  break;
 case 2:
  level = TP_EC_FAN_AUTO;
  break;
 case 3:

  return -ENOSYS;
 default:
  return -EINVAL;
 }

 res = fan_set_level_safe(level);
 if (res == -ENXIO)
  return -EINVAL;
 else if (res < 0)
  return res;

 fan_watchdog_reset();

 return count;
}
