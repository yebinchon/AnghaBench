
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct w83l786ng_data {int* pwm_enable; int update_lock; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 size_t EINVAL ;
 int* W83L786NG_PWM_ENABLE_SHIFT ;
 int W83L786NG_REG_FAN_CFG ;
 struct w83l786ng_data* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;
 int w83l786ng_read_value (struct i2c_client*,int ) ;
 int w83l786ng_write_value (struct i2c_client*,int ,int) ;

__attribute__((used)) static ssize_t
store_pwm_enable(struct device *dev, struct device_attribute *attr,
   const char *buf, size_t count)
{
 int nr = to_sensor_dev_attr(attr)->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct w83l786ng_data *data = i2c_get_clientdata(client);
 u32 val = simple_strtoul(buf, ((void*)0), 10);

 u8 reg;

 if (!val || (val > 2))
  return -EINVAL;

 mutex_lock(&data->update_lock);
 reg = w83l786ng_read_value(client, W83L786NG_REG_FAN_CFG);
 data->pwm_enable[nr] = val;
 reg &= ~(0x02 << W83L786NG_PWM_ENABLE_SHIFT[nr]);
 reg |= (val - 1) << W83L786NG_PWM_ENABLE_SHIFT[nr];
 w83l786ng_write_value(client, W83L786NG_REG_FAN_CFG, reg);
 mutex_unlock(&data->update_lock);
 return count;
}
