
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_NR_PALMZ72_BL_POWER ;
 int GPIO_NR_PALMZ72_LCD_POWER ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int palmz72_backlight_notify(int brightness)
{
 gpio_set_value(GPIO_NR_PALMZ72_BL_POWER, brightness);
 gpio_set_value(GPIO_NR_PALMZ72_LCD_POWER, brightness);
 return brightness;
}
