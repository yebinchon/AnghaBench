
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;


 int EGPIO_MAGICIAN_LCD_POWER ;
 int GPIO104_MAGICIAN_LCD_POWER_1 ;
 int GPIO105_MAGICIAN_LCD_POWER_2 ;
 int GPIO106_MAGICIAN_LCD_POWER_3 ;
 int GPIO75_MAGICIAN_SAMSUNG_POWER ;
 int gpio_set_value (int ,int) ;
 int mdelay (int) ;
 int pr_debug (char*) ;
 int system_rev ;

__attribute__((used)) static void samsung_lcd_power(int on, struct fb_var_screeninfo *si)
{
 pr_debug("Samsung LCD power\n");

 if (on) {
  pr_debug("on\n");
  if (system_rev < 3)
   gpio_set_value(GPIO75_MAGICIAN_SAMSUNG_POWER, 1);
  else
   gpio_set_value(EGPIO_MAGICIAN_LCD_POWER, 1);
  mdelay(10);
  gpio_set_value(GPIO106_MAGICIAN_LCD_POWER_3, 1);
  mdelay(10);
  gpio_set_value(GPIO104_MAGICIAN_LCD_POWER_1, 1);
  mdelay(30);
  gpio_set_value(GPIO105_MAGICIAN_LCD_POWER_2, 1);
  mdelay(10);
 } else {
  pr_debug("off\n");
  mdelay(10);
  gpio_set_value(GPIO105_MAGICIAN_LCD_POWER_2, 0);
  mdelay(30);
  gpio_set_value(GPIO104_MAGICIAN_LCD_POWER_1, 0);
  mdelay(10);
  gpio_set_value(GPIO106_MAGICIAN_LCD_POWER_3, 0);
  mdelay(10);
  if (system_rev < 3)
   gpio_set_value(GPIO75_MAGICIAN_SAMSUNG_POWER, 0);
  else
   gpio_set_value(EGPIO_MAGICIAN_LCD_POWER, 0);
 }
}
