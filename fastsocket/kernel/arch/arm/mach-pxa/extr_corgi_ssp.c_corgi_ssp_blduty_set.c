
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int corgi_ssp_lcdtg_send (int,int) ;

void corgi_ssp_blduty_set(int duty)
{
 corgi_ssp_lcdtg_send(0x02,duty);
}
