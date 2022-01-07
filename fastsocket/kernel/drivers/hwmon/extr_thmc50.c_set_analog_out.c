
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thmc50_data {int analog_out; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int SENSORS_LIMIT (int,int ,int) ;
 int THMC50_REG_ANALOG_OUT ;
 int THMC50_REG_CONF ;
 int THMC50_REG_CONF_nFANOFF ;
 struct thmc50_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_analog_out(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct thmc50_data *data = i2c_get_clientdata(client);
 int tmp = simple_strtoul(buf, ((void*)0), 10);
 int config;

 mutex_lock(&data->update_lock);
 data->analog_out = SENSORS_LIMIT(tmp, 0, 255);
 i2c_smbus_write_byte_data(client, THMC50_REG_ANALOG_OUT,
      data->analog_out);

 config = i2c_smbus_read_byte_data(client, THMC50_REG_CONF);
 if (data->analog_out == 0)
  config &= ~THMC50_REG_CONF_nFANOFF;
 else
  config |= THMC50_REG_CONF_nFANOFF;
 i2c_smbus_write_byte_data(client, THMC50_REG_CONF, config);

 mutex_unlock(&data->update_lock);
 return count;
}
