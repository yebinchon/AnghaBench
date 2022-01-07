
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adt7462_data {int* pwm_cfg; int lock; } ;


 int ADT7462_PWM_CHANNEL_MASK ;
 int ADT7462_PWM_CHANNEL_SHIFT ;
 int ADT7462_REG_PWM_CFG (int) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void set_pwm_channel(struct i2c_client *client,
       struct adt7462_data *data,
       int which,
       int value)
{
 int temp = data->pwm_cfg[which] & ~ADT7462_PWM_CHANNEL_MASK;
 temp |= value << ADT7462_PWM_CHANNEL_SHIFT;

 mutex_lock(&data->lock);
 data->pwm_cfg[which] = temp;
 i2c_smbus_write_byte_data(client, ADT7462_REG_PWM_CFG(which), temp);
 mutex_unlock(&data->lock);
}
