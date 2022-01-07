
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int update_lock; int * in_min; } ;
typedef size_t ssize_t ;


 int ADM9240_REG_IN_MIN (size_t) ;
 int IN_TO_REG (unsigned long,size_t) ;
 struct adm9240_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_in_min(struct device *dev,
  struct device_attribute *devattr,
  const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct adm9240_data *data = i2c_get_clientdata(client);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->in_min[attr->index] = IN_TO_REG(val, attr->index);
 i2c_smbus_write_byte_data(client, ADM9240_REG_IN_MIN(attr->index),
   data->in_min[attr->index]);
 mutex_unlock(&data->update_lock);
 return count;
}
