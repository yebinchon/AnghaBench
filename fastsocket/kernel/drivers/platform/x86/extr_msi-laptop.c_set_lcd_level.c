
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int buf ;


 int EINVAL ;
 int MSI_EC_COMMAND_LCD_LEVEL ;
 int MSI_LCD_LEVEL_MAX ;
 int ec_transaction (int ,int*,int,int *,int ,int) ;

__attribute__((used)) static int set_lcd_level(int level)
{
 u8 buf[2];

 if (level < 0 || level >= MSI_LCD_LEVEL_MAX)
  return -EINVAL;

 buf[0] = 0x80;
 buf[1] = (u8) (level*31);

 return ec_transaction(MSI_EC_COMMAND_LCD_LEVEL, buf, sizeof(buf), ((void*)0), 0, 1);
}
