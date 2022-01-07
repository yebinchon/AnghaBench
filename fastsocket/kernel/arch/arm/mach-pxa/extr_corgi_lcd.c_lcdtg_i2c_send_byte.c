
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int POWER0_COM_DOUT ;
 int lcdtg_i2c_send_bit (int) ;

__attribute__((used)) static void lcdtg_i2c_send_byte(u8 base, u8 data)
{
 int i;
 for (i = 0; i < 8; i++) {
  if (data & 0x80)
   lcdtg_i2c_send_bit(base | POWER0_COM_DOUT);
  else
   lcdtg_i2c_send_bit(base);
  data <<= 1;
 }
}
