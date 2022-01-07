
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int hp_wmi_dock_state () ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_dock(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 int value = hp_wmi_dock_state();
 if (value < 0)
  return -EINVAL;
 return sprintf(buf, "%d\n", value);
}
