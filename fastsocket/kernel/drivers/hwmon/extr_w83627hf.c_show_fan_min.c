
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w83627hf_data {int * fan_div; int * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 scalar_t__ DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,long) ;
 int sprintf (char*,char*,int ) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 struct w83627hf_data* w83627hf_update_device (struct device*) ;

__attribute__((used)) static ssize_t
show_fan_min(struct device *dev, struct device_attribute *devattr, char *buf)
{
 int nr = to_sensor_dev_attr(devattr)->index;
 struct w83627hf_data *data = w83627hf_update_device(dev);
 return sprintf(buf, "%ld\n", FAN_FROM_REG(data->fan_min[nr],
    (long)DIV_FROM_REG(data->fan_div[nr])));
}
