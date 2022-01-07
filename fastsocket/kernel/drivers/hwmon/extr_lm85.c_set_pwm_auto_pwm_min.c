
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm85_data {int update_lock; TYPE_1__* autofan; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_4__ {int index; } ;
struct TYPE_3__ {int min_pwm; } ;


 int LM85_REG_AFAN_MINPWM (int) ;
 int PWM_TO_REG (long) ;
 struct lm85_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm85_write_value (struct i2c_client*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 long simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_2__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t set_pwm_auto_pwm_min(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct lm85_data *data = i2c_get_clientdata(client);
 long val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->autofan[nr].min_pwm = PWM_TO_REG(val);
 lm85_write_value(client, LM85_REG_AFAN_MINPWM(nr),
  data->autofan[nr].min_pwm);
 mutex_unlock(&data->update_lock);
 return count;
}
