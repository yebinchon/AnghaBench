
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int update_lock; int aout; } ;
typedef size_t ssize_t ;


 int ADM9240_REG_ANALOG_OUT ;
 int AOUT_TO_REG (unsigned long) ;
 struct adm9240_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_aout(struct device *dev,
  struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adm9240_data *data = i2c_get_clientdata(client);
 unsigned long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->aout = AOUT_TO_REG(val);
 i2c_smbus_write_byte_data(client, ADM9240_REG_ANALOG_OUT, data->aout);
 mutex_unlock(&data->update_lock);
 return count;
}
