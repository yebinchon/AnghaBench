
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_stats {int state_num; int* freq_table; int * time_in_state; int cpu; } ;
struct cpufreq_policy {int cpu; } ;
typedef int ssize_t ;


 int cpufreq_stats_table ;
 int cpufreq_stats_update (int ) ;
 scalar_t__ cputime64_to_clock_t (int ) ;
 struct cpufreq_stats* per_cpu (int ,int ) ;
 int sprintf (char*,char*,int,unsigned long long) ;

__attribute__((used)) static ssize_t show_time_in_state(struct cpufreq_policy *policy, char *buf)
{
 ssize_t len = 0;
 int i;
 struct cpufreq_stats *stat = per_cpu(cpufreq_stats_table, policy->cpu);
 if (!stat)
  return 0;
 cpufreq_stats_update(stat->cpu);
 for (i = 0; i < stat->state_num; i++) {
  len += sprintf(buf + len, "%u %llu\n", stat->freq_table[i],
   (unsigned long long)
   cputime64_to_clock_t(stat->time_in_state[i]));
 }
 return len;
}
