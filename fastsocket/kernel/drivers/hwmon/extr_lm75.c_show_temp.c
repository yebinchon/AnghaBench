
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct lm75_data {int * temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int LM75_TEMP_FROM_REG (int ) ;
 struct lm75_data* lm75_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t show_temp(struct device *dev, struct device_attribute *da,
    char *buf)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct lm75_data *data = lm75_update_device(dev);
 return sprintf(buf, "%d\n",
         LM75_TEMP_FROM_REG(data->temp[attr->index]));
}
