
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct pc87360_data {int * fan_status; int * fan_min; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int FAN_DIV_FROM_REG (int ) ;
 int FAN_FROM_REG (int ,int ) ;
 struct pc87360_data* pc87360_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan_min(struct device *dev, struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct pc87360_data *data = pc87360_update_device(dev);
 return sprintf(buf, "%u\n", FAN_FROM_REG(data->fan_min[attr->index],
         FAN_DIV_FROM_REG(data->fan_status[attr->index])));
}
