
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct lm93_data {int update_lock; int * pwm_override; } ;
struct i2c_client {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int index; } ;


 int LM93_PWM_CTL2 ;
 int LM93_PWM_CTL4 ;
 int LM93_PWM_FROM_REG (int,int ) ;
 int LM93_PWM_MAP_HI_FREQ ;
 int LM93_PWM_MAP_LO_FREQ ;
 int LM93_PWM_TO_REG (int ,int ) ;
 int LM93_REG_PWM_CTL (int,int ) ;
 struct lm93_data* i2c_get_clientdata (struct i2c_client*) ;
 int lm93_read_byte (struct i2c_client*,int ) ;
 int lm93_write_byte (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int simple_strtoul (char const*,int *,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;
 TYPE_1__* to_sensor_dev_attr (struct device_attribute*) ;

__attribute__((used)) static ssize_t store_pwm(struct device *dev, struct device_attribute *attr,
    const char *buf, size_t count)
{
 int nr = (to_sensor_dev_attr(attr))->index;
 struct i2c_client *client = to_i2c_client(dev);
 struct lm93_data *data = i2c_get_clientdata(client);
 u32 val = simple_strtoul(buf, ((void*)0), 10);
 u8 ctl2, ctl4;

 mutex_lock(&data->update_lock);
 ctl2 = lm93_read_byte(client,LM93_REG_PWM_CTL(nr,LM93_PWM_CTL2));
 ctl4 = lm93_read_byte(client, LM93_REG_PWM_CTL(nr,LM93_PWM_CTL4));
 ctl2 = (ctl2 & 0x0f) | LM93_PWM_TO_REG(val,(ctl4 & 0x07) ?
   LM93_PWM_MAP_LO_FREQ : LM93_PWM_MAP_HI_FREQ) << 4;

 data->pwm_override[nr] = LM93_PWM_FROM_REG(ctl2 >> 4,
   (ctl4 & 0x07) ? LM93_PWM_MAP_LO_FREQ :
   LM93_PWM_MAP_HI_FREQ);
 lm93_write_byte(client,LM93_REG_PWM_CTL(nr,LM93_PWM_CTL2),ctl2);
 mutex_unlock(&data->update_lock);
 return count;
}
