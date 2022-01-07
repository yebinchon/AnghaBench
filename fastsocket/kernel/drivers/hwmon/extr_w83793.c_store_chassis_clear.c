
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83793_data {int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int W83793_REG_CLR_CHASSIS ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_chassis_clear(struct device *dev,
      struct device_attribute *attr, const char *buf,
      size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);
 u8 val;

 mutex_lock(&data->update_lock);
 val = w83793_read_value(client, W83793_REG_CLR_CHASSIS);
 val |= 0x80;
 w83793_write_value(client, W83793_REG_CLR_CHASSIS, val);
 mutex_unlock(&data->update_lock);
 return count;
}
