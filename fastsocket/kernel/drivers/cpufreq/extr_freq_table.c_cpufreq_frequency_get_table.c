
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {int dummy; } ;


 struct cpufreq_frequency_table* per_cpu (int ,unsigned int) ;
 int show_table ;

struct cpufreq_frequency_table *cpufreq_frequency_get_table(unsigned int cpu)
{
 return per_cpu(show_table, cpu);
}
