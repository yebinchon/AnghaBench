
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ad7418_data {int lock; int * temp; } ;
typedef size_t ssize_t ;


 int * AD7418_REG_TEMP ;
 int LM75_TEMP_TO_REG (long) ;
 int ad7418_write (struct i2c_client*,int ,int ) ;
 struct ad7418_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp(struct device *dev, struct device_attribute *devattr,
   const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(devattr);
 struct i2c_client *client = to_i2c_client(dev);
 struct ad7418_data *data = i2c_get_clientdata(client);
 long temp = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->lock);
 data->temp[attr->index] = LM75_TEMP_TO_REG(temp);
 ad7418_write(client, AD7418_REG_TEMP[attr->index], data->temp[attr->index]);
 mutex_unlock(&data->lock);
 return count;
}
