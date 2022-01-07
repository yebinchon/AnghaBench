
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int busfreq ;
 unsigned int powernow_k6_get_cpu_multiplier () ;

__attribute__((used)) static unsigned int powernow_k6_get(unsigned int cpu)
{
 unsigned int ret;
 ret = (busfreq * powernow_k6_get_cpu_multiplier());
 return ret;
}
