
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int POWERREG0_ADRS ;
 int corgi_ssp_lcdtg_send (int ,int ) ;
 int udelay (int) ;

__attribute__((used)) static void lcdtg_ssp_i2c_send(u8 data)
{
 corgi_ssp_lcdtg_send(POWERREG0_ADRS, data);
 udelay(10);
}
