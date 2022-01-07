
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct gl520_data {int* fan_min; int beep_mask; int alarm_mask; int update_lock; int * fan_div; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int FAN_TO_REG (unsigned long,int ) ;
 int GL520_REG_BEEP_MASK ;
 int GL520_REG_FAN_MIN ;
 int gl520_read_value (struct i2c_client*,int ) ;
 int gl520_write_value (struct i2c_client*,int ,int) ;
 struct gl520_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_fan_min(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct gl520_data *data = i2c_get_clientdata(client);
 int n = to_sensor_dev_attr(attr)->index;
 unsigned long v = simple_strtoul(buf, ((void*)0), 10);
 u8 r;

 mutex_lock(&data->update_lock);
 r = FAN_TO_REG(v, data->fan_div[n]);
 data->fan_min[n] = r;

 if (n == 0)
  gl520_write_value(client, GL520_REG_FAN_MIN,
      (gl520_read_value(client, GL520_REG_FAN_MIN)
       & ~0xff00) | (r << 8));
 else
  gl520_write_value(client, GL520_REG_FAN_MIN,
      (gl520_read_value(client, GL520_REG_FAN_MIN)
       & ~0xff) | r);

 data->beep_mask = gl520_read_value(client, GL520_REG_BEEP_MASK);
 if (data->fan_min[n] == 0)
  data->alarm_mask &= (n == 0) ? ~0x20 : ~0x40;
 else
  data->alarm_mask |= (n == 0) ? 0x20 : 0x40;
 data->beep_mask &= data->alarm_mask;
 gl520_write_value(client, GL520_REG_BEEP_MASK, data->beep_mask);

 mutex_unlock(&data->update_lock);
 return count;
}
