
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int POWER0_COM_DCLK ;
 int POWER0_COM_DOUT ;
 int lcdtg_ssp_i2c_send (int) ;

__attribute__((used)) static void lcdtg_i2c_send_stop(u8 base)
{
 lcdtg_ssp_i2c_send(base);
 lcdtg_ssp_i2c_send(base | POWER0_COM_DCLK);
 lcdtg_ssp_i2c_send(base | POWER0_COM_DCLK | POWER0_COM_DOUT);
}
