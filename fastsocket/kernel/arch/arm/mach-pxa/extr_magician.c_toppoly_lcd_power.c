
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int dummy; } ;


 int EGPIO_MAGICIAN_LCD_POWER ;
 int EGPIO_MAGICIAN_TOPPOLY_POWER ;
 int GPIO104_MAGICIAN_LCD_POWER_1 ;
 int GPIO105_MAGICIAN_LCD_POWER_2 ;
 int GPIO106_MAGICIAN_LCD_POWER_3 ;
 int gpio_set_value (int ,int) ;
 int msleep (int) ;
 int pr_debug (char*) ;
 int udelay (int) ;

__attribute__((used)) static void toppoly_lcd_power(int on, struct fb_var_screeninfo *si)
{
 pr_debug("Toppoly LCD power\n");

 if (on) {
  pr_debug("on\n");
  gpio_set_value(EGPIO_MAGICIAN_TOPPOLY_POWER, 1);
  gpio_set_value(GPIO106_MAGICIAN_LCD_POWER_3, 1);
  udelay(2000);
  gpio_set_value(EGPIO_MAGICIAN_LCD_POWER, 1);
  udelay(2000);

  udelay(2000);
  gpio_set_value(GPIO104_MAGICIAN_LCD_POWER_1, 1);
  udelay(2000);
  gpio_set_value(GPIO105_MAGICIAN_LCD_POWER_2, 1);
 } else {
  pr_debug("off\n");
  msleep(15);
  gpio_set_value(GPIO105_MAGICIAN_LCD_POWER_2, 0);
  udelay(500);
  gpio_set_value(GPIO104_MAGICIAN_LCD_POWER_1, 0);
  udelay(1000);
  gpio_set_value(GPIO106_MAGICIAN_LCD_POWER_3, 0);
  gpio_set_value(EGPIO_MAGICIAN_LCD_POWER, 0);
 }
}
