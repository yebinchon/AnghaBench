
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_policy {int max; int min; } ;
struct cpufreq_frequency_table {int dummy; } ;
typedef int pxa_freqs_t ;


 int cpufreq_frequency_table_verify (struct cpufreq_policy*,struct cpufreq_frequency_table*) ;
 int find_freq_tables (struct cpufreq_frequency_table**,int **) ;
 scalar_t__ freq_debug ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static int pxa_verify_policy(struct cpufreq_policy *policy)
{
 struct cpufreq_frequency_table *pxa_freqs_table;
 pxa_freqs_t *pxa_freqs;
 int ret;

 find_freq_tables(&pxa_freqs_table, &pxa_freqs);
 ret = cpufreq_frequency_table_verify(policy, pxa_freqs_table);

 if (freq_debug)
  pr_debug("Verified CPU policy: %dKhz min to %dKhz max\n",
    policy->min, policy->max);

 return ret;
}
