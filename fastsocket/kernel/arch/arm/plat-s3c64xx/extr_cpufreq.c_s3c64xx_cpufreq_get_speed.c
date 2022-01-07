
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int armclk ;
 int clk_get_rate (int ) ;

__attribute__((used)) static unsigned int s3c64xx_cpufreq_get_speed(unsigned int cpu)
{
 if (cpu != 0)
  return 0;

 return clk_get_rate(armclk) / 1000;
}
