
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;
 int EPERM ;
 int REG_GPIODATAIN1 ;
 int TWL4030_GPIO_MAX ;
 int gpio_twl4030_read (int) ;
 int gpio_usage_count ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int twl4030_get_gpio_datain(int gpio)
{
 u8 d_bnk = gpio >> 3;
 u8 d_off = gpio & 0x7;
 u8 base = 0;
 int ret = 0;

 if (unlikely((gpio >= TWL4030_GPIO_MAX)
  || !(gpio_usage_count & BIT(gpio))))
  return -EPERM;

 base = REG_GPIODATAIN1 + d_bnk;
 ret = gpio_twl4030_read(base);
 if (ret > 0)
  ret = (ret >> d_off) & 0x1;

 return ret;
}
