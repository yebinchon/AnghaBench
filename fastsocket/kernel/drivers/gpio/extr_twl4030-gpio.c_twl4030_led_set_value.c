
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LEDEN_LEDAON ;
 int LEDEN_LEDAPWM ;
 int TWL4030_LED_LEDEN ;
 int TWL4030_MODULE_LED ;
 int cached_leden ;
 int gpio_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int twl4030_i2c_write_u8 (int ,int,int ) ;

__attribute__((used)) static void twl4030_led_set_value(int led, int value)
{
 u8 mask = LEDEN_LEDAON | LEDEN_LEDAPWM;
 int status;

 if (led)
  mask <<= 1;

 mutex_lock(&gpio_lock);
 if (value)
  cached_leden &= ~mask;
 else
  cached_leden |= mask;
 status = twl4030_i2c_write_u8(TWL4030_MODULE_LED, cached_leden,
   TWL4030_LED_LEDEN);
 mutex_unlock(&gpio_lock);
}
