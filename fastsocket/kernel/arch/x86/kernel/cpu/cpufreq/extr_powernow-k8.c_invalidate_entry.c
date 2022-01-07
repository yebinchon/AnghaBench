
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {int frequency; } ;


 int CPUFREQ_ENTRY_INVALID ;

__attribute__((used)) static void invalidate_entry(struct cpufreq_frequency_table *powernow_table,
  unsigned int entry)
{
 powernow_table[entry].frequency = CPUFREQ_ENTRY_INVALID;
}
