
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct pc87427_data {int * fan; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int fan_from_reg (int ) ;
 struct pc87427_data* pc87427_update_device (struct device*) ;
 int sprintf (char*,char*,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan_input(struct device *dev, struct device_attribute
         *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct pc87427_data *data = pc87427_update_device(dev);
 int nr = attr->index;

 return sprintf(buf, "%lu\n", fan_from_reg(data->fan[nr]));
}
