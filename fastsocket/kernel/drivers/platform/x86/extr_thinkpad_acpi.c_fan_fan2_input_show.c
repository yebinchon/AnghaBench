
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int fan2_get_speed (unsigned int*) ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t fan_fan2_input_show(struct device *dev,
      struct device_attribute *attr,
      char *buf)
{
 int res;
 unsigned int speed;

 res = fan2_get_speed(&speed);
 if (res < 0)
  return res;

 return snprintf(buf, PAGE_SIZE, "%u\n", speed);
}
