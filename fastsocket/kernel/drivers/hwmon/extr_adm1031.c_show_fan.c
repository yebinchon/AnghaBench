
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1031_data {int * fan_div; int * fan; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int FAN_DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ) ;
 struct adm1031_data* adm1031_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 scalar_t__ trust_fan_readings (struct adm1031_data*,int) ;

__attribute__((used)) static ssize_t show_fan(struct device *dev,
   struct device_attribute *attr, char *buf)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct adm1031_data *data = adm1031_update_device(dev);
 int value;

 value = trust_fan_readings(data, nr) ? FAN_FROM_REG(data->fan[nr],
     FAN_DIV_FROM_REG(data->fan_div[nr])) : 0;
 return sprintf(buf, "%d\n", value);
}
