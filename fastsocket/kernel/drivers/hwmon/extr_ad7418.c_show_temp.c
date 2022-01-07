
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7418_data {int * temp; } ;
typedef int ssize_t ;


 int LM75_TEMP_FROM_REG (int ) ;
 struct ad7418_data* ad7418_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev, struct device_attribute *devattr,
   char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct ad7418_data *data = ad7418_update_device(dev);
 return sprintf(buf, "%d\n",
  LM75_TEMP_FROM_REG(data->temp[attr->index]));
}
