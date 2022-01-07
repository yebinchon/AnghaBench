
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int app_timer_clk ;
 int clk_enable (int *) ;

void u300_enable_timer_clock(void)
{
 clk_enable(&app_timer_clk);
}
