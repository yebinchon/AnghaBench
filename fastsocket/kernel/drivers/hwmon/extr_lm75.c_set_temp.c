
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sensor_device_attribute {int index; } ;
struct lm75_data {int update_lock; int * temp; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int * LM75_REG_TEMP ;
 int LM75_TEMP_TO_REG (long) ;
 struct lm75_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm75_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp(struct device *dev, struct device_attribute *da,
   const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct i2c_client *client = to_i2c_client(dev);
 struct lm75_data *data = i2c_get_clientdata(client);
 int nr = attr->index;
 long temp = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->temp[nr] = LM75_TEMP_TO_REG(temp);
 lm75_write_value(client, LM75_REG_TEMP[nr], data->temp[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
