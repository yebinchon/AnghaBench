
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct cpufreq_stats {int last_index; int max_state; int total_trans; int * trans_table; } ;
struct cpufreq_freqs {int cpu; int new; } ;


 unsigned long CPUFREQ_POSTCHANGE ;
 int cpufreq_stats_lock ;
 int cpufreq_stats_table ;
 int cpufreq_stats_update (int ) ;
 int freq_table_get_index (struct cpufreq_stats*,int ) ;
 struct cpufreq_stats* per_cpu (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cpufreq_stat_notifier_trans(struct notifier_block *nb,
  unsigned long val, void *data)
{
 struct cpufreq_freqs *freq = data;
 struct cpufreq_stats *stat;
 int old_index, new_index;

 if (val != CPUFREQ_POSTCHANGE)
  return 0;

 stat = per_cpu(cpufreq_stats_table, freq->cpu);
 if (!stat)
  return 0;

 old_index = stat->last_index;
 new_index = freq_table_get_index(stat, freq->new);

 cpufreq_stats_update(freq->cpu);
 if (old_index == new_index)
  return 0;

 if (old_index == -1 || new_index == -1)
  return 0;

 spin_lock(&cpufreq_stats_lock);
 stat->last_index = new_index;



 stat->total_trans++;
 spin_unlock(&cpufreq_stats_lock);
 return 0;
}
