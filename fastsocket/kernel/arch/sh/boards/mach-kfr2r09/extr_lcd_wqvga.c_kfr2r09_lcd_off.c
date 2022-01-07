
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kfr2r09_lcd_backlight (int ) ;

void kfr2r09_lcd_off(void *board_data)
{
 kfr2r09_lcd_backlight(0);
}
