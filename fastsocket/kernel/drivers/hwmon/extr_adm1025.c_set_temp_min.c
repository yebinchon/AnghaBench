
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1025_data {int update_lock; int * temp_min; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int ADM1025_REG_TEMP_LOW (int) ;
 int TEMP_TO_REG (long) ;
 struct adm1025_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_temp_min(struct device *dev, struct device_attribute *attr,
       const char *buf, size_t count)
{
 int index = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1025_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->temp_min[index] = TEMP_TO_REG(val);
 i2c_smbus_write_byte_data(client, ADM1025_REG_TEMP_LOW(index),
      data->temp_min[index]);
 mutex_unlock(&data->update_lock);
 return count;
}
