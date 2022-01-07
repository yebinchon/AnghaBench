
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MSI_EC_COMMAND_LCD_LEVEL ;
 int ec_transaction (int ,int*,int,int*,int,int) ;

__attribute__((used)) static int set_auto_brightness(int enable)
{
 u8 wdata[2], rdata;
 int result;

 wdata[0] = 4;

 result = ec_transaction(MSI_EC_COMMAND_LCD_LEVEL, wdata, 1, &rdata, 1, 1);
 if (result < 0)
  return result;

 wdata[0] = 0x84;
 wdata[1] = (rdata & 0xF7) | (enable ? 8 : 0);

 return ec_transaction(MSI_EC_COMMAND_LCD_LEVEL, wdata, 2, ((void*)0), 0, 1);
}
