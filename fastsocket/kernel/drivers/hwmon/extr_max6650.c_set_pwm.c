
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int config; int dac; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int MAX6650_CFG_V12 ;
 int MAX6650_REG_DAC ;
 int SENSORS_LIMIT (int,int ,int) ;
 struct max6650_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_pwm(struct device *dev, struct device_attribute *devattr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct max6650_data *data = i2c_get_clientdata(client);
 int pwm = simple_strtoul(buf, ((void*)0), 10);

 pwm = SENSORS_LIMIT(pwm, 0, 255);

 mutex_lock(&data->update_lock);

 if (data->config & MAX6650_CFG_V12)
  data->dac = 180 - (180 * pwm)/255;
 else
  data->dac = 76 - (76 * pwm)/255;

 i2c_smbus_write_byte_data(client, MAX6650_REG_DAC, data->dac);

 mutex_unlock(&data->update_lock);

 return count;
}
