
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_NR_TREO680_BL_POWER ;
 int TREO680_MAX_INTENSITY ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static int treo680_backlight_notify(int brightness)
{
 gpio_set_value(GPIO_NR_TREO680_BL_POWER, brightness);
 return TREO680_MAX_INTENSITY - brightness;
}
