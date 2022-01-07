
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sensor_device_attribute {size_t index; } ;
struct i2c_client {int dummy; } ;
struct ds1621_data {int update_lock; int * temp; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int * DS1621_REG_TEMP ;
 int LM75_TEMP_TO_REG (int ) ;
 int ds1621_write_temp (struct i2c_client*,int ,int ) ;
 struct ds1621_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 struct sensor_device_attribute* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp(struct device *dev, struct device_attribute *da,
   const char *buf, size_t count)
{
 struct sensor_device_attribute *attr = to_sensor_dev_attr(da);
 struct i2c_client *client = to_i2c_client(dev);
 struct ds1621_data *data = i2c_get_clientdata(client);
 u16 val = LM75_TEMP_TO_REG(simple_strtol(buf, ((void*)0), 10));

 mutex_lock(&data->update_lock);
 data->temp[attr->index] = val;
 ds1621_write_temp(client, DS1621_REG_TEMP[attr->index],
     data->temp[attr->index]);
 mutex_unlock(&data->update_lock);
 return count;
}
