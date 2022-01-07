
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adt7473_data {int alarm; } ;
typedef int ssize_t ;


 struct adt7473_data* adt7473_update_device (struct device*) ;
 int sprintf (char*,char*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_alarm(struct device *dev,
     struct device_attribute *devattr,
     char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct adt7473_data *data = adt7473_update_device(dev);

 if (data->alarm & attr->index)
  return sprintf(buf, "1\n");
 else
  return sprintf(buf, "0\n");
}
