
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmp401_data {int config; int * temp_crit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int index; } ;


 int sprintf (char*,char*,int) ;
 int tmp401_crit_register_to_temp (int ,int ) ;
 struct tmp401_data* tmp401_update_device (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp_crit(struct device *dev,
 struct device_attribute *devattr, char *buf)
{
 int index = to_sensor_dev_attr(devattr)->index;
 struct tmp401_data *data = tmp401_update_device(dev);

 return sprintf(buf, "%d\n",
   tmp401_crit_register_to_temp(data->temp_crit[index],
       data->config));
}
