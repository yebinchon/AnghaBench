
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gl518_data {int * fan_div; int * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ) ;
 struct gl518_data* gl518_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan_min(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct gl518_data *data = gl518_update_device(dev);
 return sprintf(buf, "%d\n", FAN_FROM_REG(data->fan_min[nr],
     DIV_FROM_REG(data->fan_div[nr])));
}
