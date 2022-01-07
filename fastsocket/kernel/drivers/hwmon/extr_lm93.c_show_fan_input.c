
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm93_data {int * block5; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM93_FAN_FROM_REG (int ) ;
 struct lm93_data* lm93_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_fan_input(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct sensor_device_attribute *s_attr = to_sensor_dev_attr(attr);
 int nr = s_attr->index;
 struct lm93_data *data = lm93_update_device(dev);

 return sprintf(buf,"%d\n",LM93_FAN_FROM_REG(data->block5[nr]));
}
