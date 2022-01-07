
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct gl520_data {int beep_enable; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int GL520_REG_BEEP_ENABLE ;
 int gl520_read_value (struct i2c_client*,int ) ;
 int gl520_write_value (struct i2c_client*,int ,int) ;
 struct gl520_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_beep_enable(struct device *dev, struct device_attribute
          *attr, const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct gl520_data *data = i2c_get_clientdata(client);
 u8 r = simple_strtoul(buf, ((void*)0), 10)?0:1;

 mutex_lock(&data->update_lock);
 data->beep_enable = !r;
 gl520_write_value(client, GL520_REG_BEEP_ENABLE,
     (gl520_read_value(client, GL520_REG_BEEP_ENABLE)
      & ~0x04) | (r << 2));
 mutex_unlock(&data->update_lock);
 return count;
}
