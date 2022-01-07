
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {unsigned long frequency; } ;
struct clk {int dummy; } ;


 unsigned long CPUFREQ_ENTRY_INVALID ;
 unsigned long CPUFREQ_TABLE_END ;
 unsigned long abs (unsigned long) ;

long clk_rate_table_round(struct clk *clk,
     struct cpufreq_frequency_table *freq_table,
     unsigned long rate)
{
 unsigned long rate_error, rate_error_prev = ~0UL;
 unsigned long rate_best_fit = rate;
 unsigned long highest, lowest;
 int i;

 highest = lowest = 0;

 for (i = 0; freq_table[i].frequency != CPUFREQ_TABLE_END; i++) {
  unsigned long freq = freq_table[i].frequency;

  if (freq == CPUFREQ_ENTRY_INVALID)
   continue;

  if (freq > highest)
   highest = freq;
  if (freq < lowest)
   lowest = freq;

  rate_error = abs(freq - rate);
  if (rate_error < rate_error_prev) {
   rate_best_fit = freq;
   rate_error_prev = rate_error;
  }

  if (rate_error == 0)
   break;
 }

 if (rate >= highest)
  rate_best_fit = highest;
 if (rate <= lowest)
  rate_best_fit = lowest;

 return rate_best_fit;
}
