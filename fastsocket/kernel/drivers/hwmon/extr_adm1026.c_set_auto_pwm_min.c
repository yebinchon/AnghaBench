
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int enable; int pwm; int auto_pwm_min; } ;
struct adm1026_data {int update_lock; TYPE_1__ pwm1; } ;
typedef size_t ssize_t ;


 int ADM1026_REG_PWM ;
 int PWM_MIN_TO_REG (int ) ;
 int PWM_TO_REG (int) ;
 int SENSORS_LIMIT (int,int ,int) ;
 int adm1026_write_value (struct i2c_client*,int ,int) ;
 struct adm1026_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtol (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t set_auto_pwm_min(struct device *dev, struct device_attribute *attr, const char *buf,
  size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct adm1026_data *data = i2c_get_clientdata(client);
 int val = simple_strtol(buf, ((void*)0), 10);

 mutex_lock(&data->update_lock);
 data->pwm1.auto_pwm_min = SENSORS_LIMIT(val, 0, 255);
 if (data->pwm1.enable == 2) {
  data->pwm1.pwm = PWM_TO_REG((data->pwm1.pwm & 0x0f) |
   PWM_MIN_TO_REG(data->pwm1.auto_pwm_min));
  adm1026_write_value(client, ADM1026_REG_PWM, data->pwm1.pwm);
 }
 mutex_unlock(&data->update_lock);
 return count;
}
