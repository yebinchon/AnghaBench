
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83792d_data {int ** temp_add; } ;
struct sensor_device_attribute_2 {int nr; int index; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ TEMP_ADD_FROM_REG (int ,int ) ;
 int sprintf (char*,char*,long) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 struct w83792d_data* w83792d_update_device (struct device*) ;

__attribute__((used)) static ssize_t show_temp23(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct sensor_device_attribute_2 *sensor_attr = to_sensor_dev_attr_2(attr);
 int nr = sensor_attr->nr;
 int index = sensor_attr->index;
 struct w83792d_data *data = w83792d_update_device(dev);
 return sprintf(buf,"%ld\n",
  (long)TEMP_ADD_FROM_REG(data->temp_add[nr][index],
   data->temp_add[nr][index+1]));
}
