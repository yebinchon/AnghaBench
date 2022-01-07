
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83793_data {int* fan_min; int update_lock; } ;
struct sensor_device_attribute_2 {int index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int FAN_TO_REG (int ) ;
 scalar_t__ W83793_REG_FAN_MIN (int) ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute_2* to_sensor_dev_attr_2 (struct device_attribute*) ;
 int w83793_write_value (struct i2c_client*,scalar_t__,int) ;

__attribute__((used)) static ssize_t
store_fan_min(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 struct sensor_device_attribute_2 *sensor_attr =
     to_sensor_dev_attr_2(attr);
 int index = sensor_attr->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);
 u16 val = FAN_TO_REG(simple_strtoul(buf, ((void*)0), 10));

 mutex_lock(&data->update_lock);
 data->fan_min[index] = val;
 w83793_write_value(client, W83793_REG_FAN_MIN(index),
      (val >> 8) & 0xff);
 w83793_write_value(client, W83793_REG_FAN_MIN(index) + 1, val & 0xff);
 mutex_unlock(&data->update_lock);

 return count;
}
