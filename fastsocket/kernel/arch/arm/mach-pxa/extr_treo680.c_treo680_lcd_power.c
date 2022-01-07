
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;


 int GPIO_NR_TREO680_BL_POWER ;
 int gpio_set_value (int ,int) ;

__attribute__((used)) static void treo680_lcd_power(int on, struct fb_var_screeninfo *info)
{
 gpio_set_value(GPIO_NR_TREO680_BL_POWER, on);
}
