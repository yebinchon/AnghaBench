
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct lm90_data {scalar_t__ kind; int temp_hyst; int * temp8; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ adt7461 ;
 struct lm90_data* lm90_update_device (struct device*) ;
 scalar_t__ lm99 ;
 scalar_t__ max6646 ;
 int sprintf (char*,char*,int) ;
 int temp_from_s8 (int ) ;
 int temp_from_u8 (int ) ;
 int temp_from_u8_adt7461 (struct lm90_data*,int ) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temphyst(struct device *dev, struct device_attribute *devattr,
        char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct lm90_data *data = lm90_update_device(dev);
 int temp;

 if (data->kind == adt7461)
  temp = temp_from_u8_adt7461(data, data->temp8[attr->index]);
 else if (data->kind == max6646)
  temp = temp_from_u8(data->temp8[attr->index]);
 else
  temp = temp_from_s8(data->temp8[attr->index]);


 if (data->kind == lm99 && attr->index == 3)
  temp += 16000;

 return sprintf(buf, "%d\n", temp - temp_from_s8(data->temp_hyst));
}
