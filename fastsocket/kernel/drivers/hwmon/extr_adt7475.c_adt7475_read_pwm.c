
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adt7475_data {int** pwm; int* pwmctl; int* pwmchan; } ;


 size_t CONTROL ;
 size_t INPUT ;
 int PWM_CONFIG_REG (int) ;
 int adt7475_read (int ) ;
 struct adt7475_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,int) ;

__attribute__((used)) static void adt7475_read_pwm(struct i2c_client *client, int index)
{
 struct adt7475_data *data = i2c_get_clientdata(client);
 unsigned int v;

 data->pwm[CONTROL][index] = adt7475_read(PWM_CONFIG_REG(index));



 v = (data->pwm[CONTROL][index] >> 5) & 7;

 if (v == 3)
  data->pwmctl[index] = 0;
 else if (v == 7)
  data->pwmctl[index] = 1;
 else if (v == 4) {




  data->pwm[INPUT][index] = 0;
  data->pwm[CONTROL][index] &= ~0xE0;
  data->pwm[CONTROL][index] |= (7 << 5);

  i2c_smbus_write_byte_data(client, PWM_CONFIG_REG(index),
       data->pwm[INPUT][index]);

  i2c_smbus_write_byte_data(client, PWM_CONFIG_REG(index),
       data->pwm[CONTROL][index]);

  data->pwmctl[index] = 1;
 } else {
  data->pwmctl[index] = 2;

  switch (v) {
  case 0:
   data->pwmchan[index] = 1;
   break;
  case 1:
   data->pwmchan[index] = 2;
   break;
  case 2:
   data->pwmchan[index] = 4;
   break;
  case 5:
   data->pwmchan[index] = 6;
   break;
  case 6:
   data->pwmchan[index] = 7;
   break;
  }
 }
}
