
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lm93_data {int update_lock; int * boost; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int LM93_REG_BOOST (int) ;
 int LM93_TEMP_TO_REG (long) ;
 struct lm93_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm93_write_byte (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_temp_auto_boost(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct lm93_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->boost[nr] = LM93_TEMP_TO_REG(val);
 lm93_write_byte(client, LM93_REG_BOOST(nr), data->boost[nr]);
 mutex_unlock(&data->update_lock);
 return count;
}
