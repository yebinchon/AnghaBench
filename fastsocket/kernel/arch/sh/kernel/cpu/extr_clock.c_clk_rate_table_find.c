
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {unsigned long frequency; } ;
struct clk {int dummy; } ;


 unsigned long CPUFREQ_ENTRY_INVALID ;
 unsigned long CPUFREQ_TABLE_END ;
 int ENOENT ;

int clk_rate_table_find(struct clk *clk,
   struct cpufreq_frequency_table *freq_table,
   unsigned long rate)
{
 int i;

 for (i = 0; freq_table[i].frequency != CPUFREQ_TABLE_END; i++) {
  unsigned long freq = freq_table[i].frequency;

  if (freq == CPUFREQ_ENTRY_INVALID)
   continue;

  if (freq == rate)
   return i;
 }

 return -ENOENT;
}
