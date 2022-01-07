
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1029_data {int* fan_div; } ;
typedef int ssize_t ;


 int DIV_FROM_REG (int) ;
 struct adm1029_data* adm1029_update_device (struct device*) ;
 int sprintf (char*,char*,...) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t
show_fan_div(struct device *dev, struct device_attribute *devattr, char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adm1029_data *data = adm1029_update_device(dev);
 if ((data->fan_div[attr->index] & 0xC0) == 0)
  return sprintf(buf, "0\n");
 return sprintf(buf, "%d\n", DIV_FROM_REG(data->fan_div[attr->index]));
}
