
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adt7475_data {unsigned int* pwmctl; unsigned int* pwmchan; int** pwm; } ;


 size_t CONTROL ;
 int EINVAL ;
 int PWM_CONFIG_REG (int) ;
 struct adt7475_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_smbus_write_byte_data (struct i2c_client*,int ,long) ;

__attribute__((used)) static int hw_set_pwm(struct i2c_client *client, int index,
        unsigned int pwmctl, unsigned int pwmchan)
{
 struct adt7475_data *data = i2c_get_clientdata(client);
 long val = 0;

 switch (pwmctl) {
 case 0:
  val = 0x03;
  break;
 case 1:
  val = 0x07;
  break;
 case 2:
  switch (pwmchan) {
  case 1:

   val = 0x00;
   break;
  case 2:

   val = 0x01;
   break;
  case 4:

   val = 0x02;
   break;
  case 6:

   val = 0x05;
   break;
  case 7:

   val = 0x06;
   break;
  default:
   return -EINVAL;
  }
  break;
 default:
  return -EINVAL;
 }

 data->pwmctl[index] = pwmctl;
 data->pwmchan[index] = pwmchan;

 data->pwm[CONTROL][index] &= ~0xE0;
 data->pwm[CONTROL][index] |= (val & 7) << 5;

 i2c_smbus_write_byte_data(client, PWM_CONFIG_REG(index),
      data->pwm[CONTROL][index]);

 return 0;
}
