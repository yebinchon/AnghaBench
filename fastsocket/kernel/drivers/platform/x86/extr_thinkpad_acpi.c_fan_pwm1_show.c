
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int TP_EC_FAN_AUTO ;
 int TP_EC_FAN_FULLSPEED ;
 int fan_control_desired_level ;
 int fan_get_status_safe (int*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t fan_pwm1_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 int res;
 u8 status;

 res = fan_get_status_safe(&status);
 if (res)
  return res;

 if ((status &
      (TP_EC_FAN_AUTO | TP_EC_FAN_FULLSPEED)) != 0)
  status = fan_control_desired_level;

 if (status > 7)
  status = 7;

 return snprintf(buf, PAGE_SIZE, "%u\n", (status * 255) / 7);
}
