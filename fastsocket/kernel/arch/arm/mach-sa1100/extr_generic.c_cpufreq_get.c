
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPCR ;
 int* cclk_frequency_100khz ;

unsigned int cpufreq_get(unsigned int cpu)
{
 return cclk_frequency_100khz[PPCR & 0xf] * 100;
}
