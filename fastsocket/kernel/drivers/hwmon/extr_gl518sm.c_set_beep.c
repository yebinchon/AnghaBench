
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct gl518_data {int beep_mask; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int GL518_REG_ALARM ;
 int gl518_read_value (struct i2c_client*,int ) ;
 int gl518_write_value (struct i2c_client*,int ,int) ;
 struct gl518_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_beep(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct gl518_data *data = i2c_get_clientdata(client);
 int bitnr = to_sensor_dev_attr(attr)->index;
 unsigned long bit;

 bit = simple_strtoul(buf, ((void*)0), 10);
 if (bit & ~1)
  return -EINVAL;

 mutex_lock(&data->update_lock);
 data->beep_mask = gl518_read_value(client, GL518_REG_ALARM);
 if (bit)
  data->beep_mask |= (1 << bitnr);
 else
  data->beep_mask &= ~(1 << bitnr);
 gl518_write_value(client, GL518_REG_ALARM, data->beep_mask);
 mutex_unlock(&data->update_lock);
 return count;
}
