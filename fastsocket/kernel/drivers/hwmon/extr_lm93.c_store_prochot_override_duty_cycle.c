
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lm93_data {int prochot_override; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int LM93_REG_PROCHOT_OVERRIDE ;
 int SENSORS_LIMIT (int ,int ,int) ;
 struct lm93_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t store_prochot_override_duty_cycle(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm93_data *data = i2c_get_clientdata(client);
 u32 val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->prochot_override = (data->prochot_override & 0xf0) |
     SENSORS_LIMIT(val, 0, 15);
 lm93_write_byte(client, LM93_REG_PROCHOT_OVERRIDE,
   data->prochot_override);
 mutex_unlock(&data->update_lock);
 return count;
}
