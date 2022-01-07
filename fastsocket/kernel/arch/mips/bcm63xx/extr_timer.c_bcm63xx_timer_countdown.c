
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_get_rate (int ) ;
 int periph_clk ;

unsigned int bcm63xx_timer_countdown(unsigned int countdown_us)
{
 return (clk_get_rate(periph_clk) / (1000 * 1000)) * countdown_us;
}
