
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_stats {int total_trans; int cpu; } ;
struct cpufreq_policy {int cpu; } ;
typedef int ssize_t ;


 int cpufreq_stats_table ;
 struct cpufreq_stats* per_cpu (int ,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_total_trans(struct cpufreq_policy *policy, char *buf)
{
 struct cpufreq_stats *stat = per_cpu(cpufreq_stats_table, policy->cpu);
 if (!stat)
  return 0;
 return sprintf(buf, "%d\n",
   per_cpu(cpufreq_stats_table, stat->cpu)->total_trans);
}
