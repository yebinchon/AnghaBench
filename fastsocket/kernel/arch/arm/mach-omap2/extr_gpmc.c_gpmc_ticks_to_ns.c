
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int gpmc_get_fclk_period () ;

unsigned int gpmc_ticks_to_ns(unsigned int ticks)
{
 return ticks * gpmc_get_fclk_period() / 1000;
}
