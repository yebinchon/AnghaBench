
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct twl4030_gpio_platform_data {int mmc_cd; } ;
struct gpio_chip {TYPE_1__* dev; } ;
struct TYPE_2__ {struct twl4030_gpio_platform_data* platform_data; } ;


 int LEDEN_LEDAEXT ;
 int LEDEN_LEDAON ;
 int LEDEN_LEDAPWM ;
 int LEDEN_PWM_LENGTHA ;
 int MASK_GPIO_CTRL_GPIO_ON ;
 int REG_GPIO_CTRL ;
 unsigned int TWL4030_GPIO_MAX ;
 int TWL4030_LED_LEDEN ;
 int TWL4030_MODULE_LED ;
 int TWL4030_MODULE_PWMA ;
 int TWL4030_MODULE_PWMB ;
 int TWL4030_PWMx_PWMxOFF ;
 int TWL4030_PWMx_PWMxON ;
 int cached_leden ;
 int gpio_lock ;
 int gpio_twl4030_write (int ,int) ;
 int gpio_usage_count ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int twl4030_i2c_read_u8 (int,int*,int ) ;
 int twl4030_i2c_write_u8 (int,int,int ) ;

__attribute__((used)) static int twl_request(struct gpio_chip *chip, unsigned offset)
{
 int status = 0;

 mutex_lock(&gpio_lock);


 if (offset >= TWL4030_GPIO_MAX) {
  u8 ledclr_mask = LEDEN_LEDAON | LEDEN_LEDAEXT
    | LEDEN_LEDAPWM | LEDEN_PWM_LENGTHA;
  u8 module = TWL4030_MODULE_PWMA;

  offset -= TWL4030_GPIO_MAX;
  if (offset) {
   ledclr_mask <<= 1;
   module = TWL4030_MODULE_PWMB;
  }


  status = twl4030_i2c_write_u8(module, 0x7f,
    TWL4030_PWMx_PWMxOFF);
  if (status < 0)
   goto done;
  status = twl4030_i2c_write_u8(module, 0x7f,
    TWL4030_PWMx_PWMxON);
  if (status < 0)
   goto done;


  module = TWL4030_MODULE_LED;
  status = twl4030_i2c_read_u8(module, &cached_leden,
    TWL4030_LED_LEDEN);
  if (status < 0)
   goto done;
  cached_leden &= ~ledclr_mask;
  status = twl4030_i2c_write_u8(module, cached_leden,
    TWL4030_LED_LEDEN);
  if (status < 0)
   goto done;

  status = 0;
  goto done;
 }


 if (!gpio_usage_count) {
  struct twl4030_gpio_platform_data *pdata;
  u8 value = MASK_GPIO_CTRL_GPIO_ON;




  pdata = chip->dev->platform_data;
  value |= pdata->mmc_cd & 0x03;

  status = gpio_twl4030_write(REG_GPIO_CTRL, value);
 }

 if (!status)
  gpio_usage_count |= (0x1 << offset);

done:
 mutex_unlock(&gpio_lock);
 return status;
}
