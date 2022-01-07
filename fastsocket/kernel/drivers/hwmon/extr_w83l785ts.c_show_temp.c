
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83l785ts_data {int * temp; } ;
struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int TEMP_FROM_REG (int ) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;
 struct w83l785ts_data* w83l785ts_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev, struct device_attribute *devattr,
 char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct w83l785ts_data *data = w83l785ts_update_device(dev);
 return sprintf(buf, "%d\n", TEMP_FROM_REG(data->temp[attr->index]));
}
