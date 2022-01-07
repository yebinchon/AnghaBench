
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H1940_LATCH_BLUETOOTH_POWER ;
 int LED_HALF ;
 int S3C2410_GPH (int) ;
 int bt_led_trigger ;
 int h1940_latch_control (int ,int ) ;
 int led_trigger_event (int ,int ) ;
 int mdelay (int) ;
 int s3c2410_gpio_setpin (int ,int) ;
 int state ;

__attribute__((used)) static void h1940bt_enable(int on)
{
 if (on) {






  h1940_latch_control(0, H1940_LATCH_BLUETOOTH_POWER);

  mdelay(10);
  s3c2410_gpio_setpin(S3C2410_GPH(1), 1);
  mdelay(10);
  s3c2410_gpio_setpin(S3C2410_GPH(1), 0);

  state = 1;
 }
 else {




  s3c2410_gpio_setpin(S3C2410_GPH(1), 1);
  mdelay(10);
  s3c2410_gpio_setpin(S3C2410_GPH(1), 0);
  mdelay(10);
  h1940_latch_control(H1940_LATCH_BLUETOOTH_POWER, 0);

  state = 0;
 }
}
