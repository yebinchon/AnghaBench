
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pca9532_data {int* pwm; int* psc; TYPE_2__* leds; } ;
struct i2c_client {int dev; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_3__ {scalar_t__ brightness; } ;
struct TYPE_4__ {scalar_t__ type; scalar_t__ state; TYPE_1__ ldev; } ;


 int EINVAL ;
 scalar_t__ PCA9532_PWM0 ;
 scalar_t__ PCA9532_TYPE_LED ;
 int dev_err (int *,char*,int,int,int) ;
 struct pca9532_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int pca9532_calcpwm(struct i2c_client *client, int pwm, int blink,
 enum led_brightness value)
{
 int a = 0, b = 0, i = 0;
 struct pca9532_data *data = i2c_get_clientdata(client);
 for (i = 0; i < 16; i++) {
  if (data->leds[i].type == PCA9532_TYPE_LED &&
   data->leds[i].state == PCA9532_PWM0+pwm) {
    a++;
    b += data->leds[i].ldev.brightness;
  }
 }
 if (a == 0) {
  dev_err(&client->dev,
  "fear of division by zero %d/%d, wanted %d\n",
   b, a, value);
  return -EINVAL;
 }
 b = b/a;
 if (b > 0xFF)
  return -EINVAL;
 data->pwm[pwm] = b;
 data->psc[pwm] = blink;
 return 0;
}
