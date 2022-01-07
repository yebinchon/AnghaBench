
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int clk_get_rate (int *) ;
 int clk_set_rate (int *,int ) ;
 int * sclk ;
 int * vclk ;

void omap2_clk_prepare_for_reboot(void)
{
 u32 rate;

 if (vclk == ((void*)0) || sclk == ((void*)0))
  return;

 rate = clk_get_rate(sclk);
 clk_set_rate(vclk, rate);
}
