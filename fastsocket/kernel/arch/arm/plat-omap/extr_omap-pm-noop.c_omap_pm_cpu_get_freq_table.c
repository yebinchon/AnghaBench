
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {int dummy; } ;


 int pr_debug (char*) ;

struct cpufreq_frequency_table **omap_pm_cpu_get_freq_table(void)
{
 pr_debug("OMAP PM: CPUFreq request for frequency table\n");







 return ((void*)0);
}
