
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_get_rate (int ) ;
 int cpuclk ;

__attribute__((used)) static unsigned int at32_get_speed(unsigned int cpu)
{

 if (cpu)
  return 0;
 return (unsigned int)((clk_get_rate(cpuclk) + 500) / 1000);
}
