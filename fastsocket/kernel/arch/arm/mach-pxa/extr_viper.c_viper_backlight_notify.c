
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIPER_BCKLIGHT_EN_GPIO ;
 int VIPER_LCD_EN_GPIO ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int viper_backlight_notify(int brightness)
{
 gpio_set_value(VIPER_LCD_EN_GPIO, !!brightness);
 gpio_set_value(VIPER_BCKLIGHT_EN_GPIO, !!brightness);

 return brightness;
}
