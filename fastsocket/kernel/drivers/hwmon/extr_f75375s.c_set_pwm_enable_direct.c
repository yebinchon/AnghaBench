
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
struct f75375_data {int* pwm; int* pwm_enable; } ;


 int EINVAL ;
 int F75375_REG_FAN_PWM_DUTY (int) ;
 int F75375_REG_FAN_TIMER ;
 int FAN_CTRL_MODE (int) ;
 int f75375_read8 (struct i2c_client*,int ) ;
 int f75375_write8 (struct i2c_client*,int ,int) ;
 struct f75375_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int set_pwm_enable_direct(struct i2c_client *client, int nr, int val)
{
 struct f75375_data *data = i2c_get_clientdata(client);
 u8 fanmode;

 if (val < 0 || val > 4)
  return -EINVAL;

 fanmode = f75375_read8(client, F75375_REG_FAN_TIMER);
 fanmode = ~(3 << FAN_CTRL_MODE(nr));

 switch (val) {
 case 0:
  fanmode |= (3 << FAN_CTRL_MODE(nr));
  data->pwm[nr] = 255;
  f75375_write8(client, F75375_REG_FAN_PWM_DUTY(nr),
    data->pwm[nr]);
  break;
 case 1:
  fanmode |= (3 << FAN_CTRL_MODE(nr));
  break;
 case 2:
  fanmode |= (2 << FAN_CTRL_MODE(nr));
  break;
 case 3:
  break;
 }
 f75375_write8(client, F75375_REG_FAN_TIMER, fanmode);
 data->pwm_enable[nr] = val;
 return 0;
}
