
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_stats {size_t last_index; unsigned long long last_time; int * time_in_state; } ;


 int cpufreq_stats_lock ;
 int cpufreq_stats_table ;
 int cputime64_add (int ,int ) ;
 int cputime_sub (unsigned long long,unsigned long long) ;
 unsigned long long get_jiffies_64 () ;
 struct cpufreq_stats* per_cpu (int ,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int cpufreq_stats_update(unsigned int cpu)
{
 struct cpufreq_stats *stat;
 unsigned long long cur_time;

 cur_time = get_jiffies_64();
 spin_lock(&cpufreq_stats_lock);
 stat = per_cpu(cpufreq_stats_table, cpu);
 if (stat->time_in_state)
  stat->time_in_state[stat->last_index] =
   cputime64_add(stat->time_in_state[stat->last_index],
          cputime_sub(cur_time, stat->last_time));
 stat->last_time = cur_time;
 spin_unlock(&cpufreq_stats_lock);
 return 0;
}
