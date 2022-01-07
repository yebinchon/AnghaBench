
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct plat_lcd_data {int dummy; } ;


 int sony_lcd_init () ;
 int sony_lcd_off () ;

__attribute__((used)) static void hx4700_lcd_set_power(struct plat_lcd_data *pd, unsigned int power)
{
 if (power)
  sony_lcd_init();
 else
  sony_lcd_off();
}
