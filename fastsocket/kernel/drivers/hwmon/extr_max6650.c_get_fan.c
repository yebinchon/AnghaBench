
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct max6650_data {int* tach; int count; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int ) ;
 struct max6650_data* max6650_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t get_fan(struct device *dev, struct device_attribute *devattr,
         char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct max6650_data *data = max6650_update_device(dev);
 int rpm;
 rpm = ((data->tach[attr->index] * 120) / DIV_FROM_REG(data->count));
 return sprintf(buf, "%d\n", rpm);
}
