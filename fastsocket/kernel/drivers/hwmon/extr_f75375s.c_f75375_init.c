
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct f75375s_platform_data {int * pwm; int * pwm_enable; } ;
struct f75375_data {int * pwm; } ;


 int F75375_REG_FAN_PWM_DUTY (int) ;
 int SENSORS_LIMIT (int ,int ,int) ;
 int f75375_write8 (struct i2c_client*,int ,int ) ;
 int set_pwm_enable_direct (struct i2c_client*,int,int ) ;

__attribute__((used)) static void f75375_init(struct i2c_client *client, struct f75375_data *data,
  struct f75375s_platform_data *f75375s_pdata)
{
 int nr;
 set_pwm_enable_direct(client, 0, f75375s_pdata->pwm_enable[0]);
 set_pwm_enable_direct(client, 1, f75375s_pdata->pwm_enable[1]);
 for (nr = 0; nr < 2; nr++) {
  data->pwm[nr] = SENSORS_LIMIT(f75375s_pdata->pwm[nr], 0, 255);
  f75375_write8(client, F75375_REG_FAN_PWM_DUTY(nr),
   data->pwm[nr]);
 }

}
