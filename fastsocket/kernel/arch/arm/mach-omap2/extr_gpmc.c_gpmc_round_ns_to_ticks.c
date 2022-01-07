
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long gpmc_get_fclk_period () ;
 unsigned long gpmc_ns_to_ticks (unsigned int) ;

unsigned int gpmc_round_ns_to_ticks(unsigned int time_ns)
{
 unsigned long ticks = gpmc_ns_to_ticks(time_ns);

 return ticks * gpmc_get_fclk_period() / 1000;
}
