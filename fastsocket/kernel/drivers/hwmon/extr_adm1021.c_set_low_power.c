
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1021_data {int low_power; int update_lock; } ;
typedef size_t ssize_t ;


 int ADM1021_REG_CONFIG_R ;
 int ADM1021_REG_CONFIG_W ;
 struct adm1021_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_low_power(struct device *dev,
        struct device_attribute *devattr,
        const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1021_data *data = i2c_get_clientdata(client);
 int low_power = simple_strtol(buf, ((void*)0), 10) != 0;

 mutex_lock(&data->update_lock);
 if (low_power != data->low_power) {
  int config = i2c_smbus_read_byte_data(
   client, ADM1021_REG_CONFIG_R);
  data->low_power = low_power;
  i2c_smbus_write_byte_data(client, ADM1021_REG_CONFIG_W,
   (config & 0xBF) | (low_power << 6));
 }
 mutex_unlock(&data->update_lock);

 return count;
}
