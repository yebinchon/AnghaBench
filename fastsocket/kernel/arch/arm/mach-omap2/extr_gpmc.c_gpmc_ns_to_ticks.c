
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long gpmc_get_fclk_period () ;

unsigned int gpmc_ns_to_ticks(unsigned int time_ns)
{
 unsigned long tick_ps;


 tick_ps = gpmc_get_fclk_period();

 return (time_ns * 1000 + tick_ps - 1) / tick_ps;
}
