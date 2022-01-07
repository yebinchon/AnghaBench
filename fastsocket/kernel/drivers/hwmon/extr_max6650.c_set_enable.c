
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max6650_data {int config; int update_lock; } ;
struct i2c_client {int dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int MAX6650_CFG_MODE_MASK ;
 int MAX6650_REG_CONFIG ;
 int dev_err (int *,char*,int) ;
 struct max6650_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_enable(struct device *dev, struct device_attribute *devattr,
     const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct max6650_data *data = i2c_get_clientdata(client);
 int mode = simple_strtoul(buf, ((void*)0), 10);
 int max6650_modes[3] = {0, 3, 2};

 if ((mode < 0)||(mode > 2)) {
  dev_err(&client->dev,
   "illegal value for pwm1_enable (%d)\n", mode);
  return -EINVAL;
 }

 mutex_lock(&data->update_lock);

 data->config = i2c_smbus_read_byte_data(client, MAX6650_REG_CONFIG);
 data->config = (data->config & ~MAX6650_CFG_MODE_MASK)
         | (max6650_modes[mode] << 4);

 i2c_smbus_write_byte_data(client, MAX6650_REG_CONFIG, data->config);

 mutex_unlock(&data->update_lock);

 return count;
}
