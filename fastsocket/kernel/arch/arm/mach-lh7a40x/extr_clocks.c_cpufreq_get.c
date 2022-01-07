
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclkfreq_get () ;

unsigned int cpufreq_get (unsigned int cpu)
{
 return fclkfreq_get ()/1000;
}
