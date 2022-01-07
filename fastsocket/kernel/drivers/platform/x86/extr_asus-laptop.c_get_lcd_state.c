
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LCD_ON ;
 int read_status (int ) ;

__attribute__((used)) static int get_lcd_state(void)
{
 return read_status(LCD_ON);
}
