
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int corgi_ssp_dac_put (int) ;

void corgi_ssp_lcdtg_send(u8 adrs, u8 data)
{
 corgi_ssp_dac_put(((adrs & 0x07) << 5) | (data & 0x1f));
}
