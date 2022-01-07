
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_client {int dummy; } ;
struct f75375_data {int* pwm_mode; int update_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int F75375_REG_CONFIG1 ;
 int FAN_CTRL_LINEAR (int) ;
 int f75375_read8 (struct i2c_client*,int ) ;
 int f75375_write8 (struct i2c_client*,int ,int) ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_mode(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct f75375_data *data = i2c_get_clientdata(client);
 int val = simple_strtoul(buf, ((void*)0), 10);
 u8 conf = 0;

 if (!(val == 0 || val == 1))
  return -EINVAL;

 mutex_lock(&data->update_lock);
 conf = f75375_read8(client, F75375_REG_CONFIG1);
 conf = ~(1 << FAN_CTRL_LINEAR(nr));

 if (val == 0)
  conf |= (1 << FAN_CTRL_LINEAR(nr)) ;

 f75375_write8(client, F75375_REG_CONFIG1, conf);
 data->pwm_mode[nr] = val;
 mutex_unlock(&data->update_lock);
 return count;
}
