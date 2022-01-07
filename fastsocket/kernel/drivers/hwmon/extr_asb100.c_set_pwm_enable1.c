
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct asb100_data {int pwm; int update_lock; } ;
typedef size_t ssize_t ;


 int ASB100_REG_PWM1 ;
 int asb100_write_value (struct i2c_client*,int ,int) ;
 struct asb100_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned long simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_pwm_enable1(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct asb100_data *data = i2c_get_clientdata(client);
 unsigned long val = simple_strtoul(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->pwm &= 0x0f;
 data->pwm |= (val ? 0x80 : 0x00);
 asb100_write_value(client, ASB100_REG_PWM1, data->pwm);
 mutex_unlock(&data->update_lock);
 return count;
}
