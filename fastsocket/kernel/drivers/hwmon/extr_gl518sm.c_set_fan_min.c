
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct gl518_data {int* fan_min; int beep_mask; int alarm_mask; int update_lock; int * fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int DIV_FROM_REG (int ) ;
 int FAN_TO_REG (unsigned long,int ) ;
 int GL518_REG_ALARM ;
 int GL518_REG_FAN_LIMIT ;
 void* gl518_read_value (struct i2c_client*,int ) ;
 int gl518_write_value (struct i2c_client*,int ,int) ;
 struct gl518_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_min(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct gl518_data *data = i2c_get_clientdata(client);
 int nr = to_sensor_dev_attr(attr)->index;
 int regvalue;
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 regvalue = gl518_read_value(client, GL518_REG_FAN_LIMIT);
 data->fan_min[nr] = FAN_TO_REG(val, DIV_FROM_REG(data->fan_div[nr]));
 regvalue = (regvalue & (0xff << (8 * nr)))
   | (data->fan_min[nr] << (8 * (1 - nr)));
 gl518_write_value(client, GL518_REG_FAN_LIMIT, regvalue);

 data->beep_mask = gl518_read_value(client, GL518_REG_ALARM);
 if (data->fan_min[nr] == 0)
  data->alarm_mask &= ~(0x20 << nr);
 else
  data->alarm_mask |= (0x20 << nr);
 data->beep_mask &= data->alarm_mask;
 gl518_write_value(client, GL518_REG_ALARM, data->beep_mask);

 mutex_unlock(&data->update_lock);
 return count;
}
