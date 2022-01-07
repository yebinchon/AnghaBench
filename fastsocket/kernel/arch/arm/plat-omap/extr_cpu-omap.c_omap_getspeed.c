
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_get_rate (int ) ;
 int mpu_clk ;

unsigned int omap_getspeed(unsigned int cpu)
{
 unsigned long rate;

 if (cpu)
  return 0;

 rate = clk_get_rate(mpu_clk) / 1000;
 return rate;
}
