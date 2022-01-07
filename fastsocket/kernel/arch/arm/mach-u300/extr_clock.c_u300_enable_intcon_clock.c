
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_enable (int *) ;
 int intcon_clk ;

void u300_enable_intcon_clock(void)
{
 clk_enable(&intcon_clk);
}
