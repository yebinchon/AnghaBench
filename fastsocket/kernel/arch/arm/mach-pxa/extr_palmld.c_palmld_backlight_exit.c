
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int GPIO_NR_PALMLD_BL_POWER ;
 int GPIO_NR_PALMLD_LCD_POWER ;
 int gpio_free (int ) ;

__attribute__((used)) static void palmld_backlight_exit(struct device *dev)
{
 gpio_free(GPIO_NR_PALMLD_BL_POWER);
 gpio_free(GPIO_NR_PALMLD_LCD_POWER);
}
