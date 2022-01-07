
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int get_clk_frequency_khz (int ) ;

__attribute__((used)) static unsigned int pxa3xx_cpufreq_get(unsigned int cpu)
{
 return get_clk_frequency_khz(0);
}
