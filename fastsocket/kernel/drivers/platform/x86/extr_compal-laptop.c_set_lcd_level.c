
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMPAL_EC_COMMAND_LCD_LEVEL ;
 int COMPAL_LCD_LEVEL_MAX ;
 int EINVAL ;
 int ec_write (int ,int) ;

__attribute__((used)) static int set_lcd_level(int level)
{
 if (level < 0 || level >= COMPAL_LCD_LEVEL_MAX)
  return -EINVAL;

 ec_write(COMPAL_EC_COMMAND_LCD_LEVEL, level);

 return 0;
}
