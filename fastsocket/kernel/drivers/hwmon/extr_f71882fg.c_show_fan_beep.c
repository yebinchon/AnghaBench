
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct f71882fg_data {int fan_beep; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 struct f71882fg_data* f71882fg_update_device (struct device*) ;
 int sprintf (char*,char*) ;
 TYPE_1__* to_sensor_dev_attr_2 (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan_beep(struct device *dev, struct device_attribute
 *devattr, char *buf)
{
 struct f71882fg_data *data = f71882fg_update_device(dev);
 int nr = to_sensor_dev_attr_2(devattr)->index;

 if (data->fan_beep & (1 << nr))
  return sprintf(buf, "1\n");
 else
  return sprintf(buf, "0\n");
}
