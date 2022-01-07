
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct pc87360_data {int in_vref; int * in_crit; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int IN_FROM_REG (int ,int ) ;
 struct pc87360_data* pc87360_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_therm_crit(struct device *dev, struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct pc87360_data *data = pc87360_update_device(dev);
 return sprintf(buf, "%u\n", IN_FROM_REG(data->in_crit[attr->index-11],
         data->in_vref));
}
