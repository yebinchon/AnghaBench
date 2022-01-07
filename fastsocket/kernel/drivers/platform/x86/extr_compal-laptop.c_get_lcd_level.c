
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int COMPAL_EC_COMMAND_LCD_LEVEL ;
 int ec_read (int ,scalar_t__*) ;

__attribute__((used)) static int get_lcd_level(void)
{
 u8 result;

 ec_read(COMPAL_EC_COMMAND_LCD_LEVEL, &result);

 return (int) result;
}
