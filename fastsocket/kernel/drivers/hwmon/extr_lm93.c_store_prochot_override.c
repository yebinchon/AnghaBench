
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct lm93_data {int update_lock; int prochot_override; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int LM93_REG_PROCHOT_OVERRIDE ;
 struct lm93_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm93_write_byte (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * prochot_override_mask ;
 scalar_t__ simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_prochot_override(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct lm93_data *data = i2c_get_clientdata(client);
 u32 val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 if (val)
  data->prochot_override |= prochot_override_mask[nr];
 else
  data->prochot_override &= (~prochot_override_mask[nr]);
 lm93_write_byte(client, LM93_REG_PROCHOT_OVERRIDE,
   data->prochot_override);
 mutex_unlock(&data->update_lock);
 return count;
}
