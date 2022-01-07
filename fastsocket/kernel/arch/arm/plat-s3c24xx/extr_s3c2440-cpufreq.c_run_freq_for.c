
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_frequency_table {int dummy; } ;


 int s3c_cpufreq_addfreq (struct cpufreq_frequency_table*,int,size_t,unsigned long) ;

__attribute__((used)) static int run_freq_for(unsigned long max_hclk, unsigned long fclk,
   int *divs,
   struct cpufreq_frequency_table *table,
   size_t table_size)
{
 unsigned long freq;
 int index = 0;
 int div;

 for (div = *divs; div > 0; div = *divs++) {
  freq = fclk / div;

  if (freq > max_hclk && div != 1)
   continue;

  freq /= 1000;
  index = s3c_cpufreq_addfreq(table, index, table_size, freq);
  if (index < 0)
   break;
 }

 return index;
}
