
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cpu_is_pxa25x () ;
 scalar_t__ cpu_is_pxa27x () ;
 unsigned int pxa25x_get_clk_frequency_khz (int) ;
 unsigned int pxa27x_get_clk_frequency_khz (int) ;
 unsigned int pxa3xx_get_clk_frequency_khz (int) ;

unsigned int get_clk_frequency_khz(int info)
{
 if (cpu_is_pxa25x())
  return pxa25x_get_clk_frequency_khz(info);
 else if (cpu_is_pxa27x())
  return pxa27x_get_clk_frequency_khz(info);
 else
  return pxa3xx_get_clk_frequency_khz(info);
}
