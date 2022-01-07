
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct w83793_data {int beep_enable; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int W83793_REG_OVT_BEEP ;
 struct w83793_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 int w83793_read_value (struct i2c_client*,int ) ;
 int w83793_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_beep_enable(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct w83793_data *data = i2c_get_clientdata(client);
 u8 val = simple_strtoul(buf, ((void*)0), 10);

 if (val != 0 && val != 1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->beep_enable = w83793_read_value(client, W83793_REG_OVT_BEEP)
       & 0xfd;
 data->beep_enable |= val << 1;
 w83793_write_value(client, W83793_REG_OVT_BEEP, data->beep_enable);
 mutex_unlock(&data->update_lock);

 return count;
}
