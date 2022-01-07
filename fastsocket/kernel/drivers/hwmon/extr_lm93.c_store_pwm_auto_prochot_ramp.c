
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct lm93_data {int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int LM93_RAMP_TO_REG (int ) ;
 int LM93_REG_PWM_RAMP_CTL ;
 struct lm93_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t store_pwm_auto_prochot_ramp(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct i2c_client *client = to_i2c_client(dev);
 struct lm93_data *data = i2c_get_clientdata(client);
 u32 val = simple_strtoul(buf, ((void*)0), 10);
 u8 ramp;

 mutex_lock(&data->update_lock);
 ramp = lm93_read_byte(client, LM93_REG_PWM_RAMP_CTL);
 ramp = (ramp & 0x0f) | (LM93_RAMP_TO_REG(val) << 4 & 0xf0);
 lm93_write_byte(client, LM93_REG_PWM_RAMP_CTL, ramp);
 mutex_unlock(&data->update_lock);
 return count;
}
