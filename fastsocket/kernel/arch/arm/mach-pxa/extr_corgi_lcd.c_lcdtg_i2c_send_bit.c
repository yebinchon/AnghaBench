
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int POWER0_COM_DCLK ;
 int lcdtg_ssp_i2c_send (int) ;

__attribute__((used)) static void lcdtg_i2c_send_bit(u8 data)
{
 lcdtg_ssp_i2c_send(data);
 lcdtg_ssp_i2c_send(data | POWER0_COM_DCLK);
 lcdtg_ssp_i2c_send(data);
}
