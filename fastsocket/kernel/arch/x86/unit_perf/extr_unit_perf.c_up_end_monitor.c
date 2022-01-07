
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unit_perf_monitor {int dummy; } ;
struct cpu_cost_stats {unsigned long long start; unsigned long long cost; int overflow; int call_times; } ;


 int UP_GET_CPU_CYCLES (unsigned long long) ;
 int g_up_monitor ;
 struct cpu_cost_stats* get_monitorer_stats (struct unit_perf_monitor*,char const*) ;
 struct unit_perf_monitor* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void up_end_monitor(const char *name)
{
 struct unit_perf_monitor *monitor;
 unsigned long long end_time;

 UP_GET_CPU_CYCLES(end_time);

 rcu_read_lock();
 monitor = rcu_dereference(g_up_monitor);
 if (monitor) {
  struct cpu_cost_stats *cost_stats = get_monitorer_stats(monitor, name);

  if (cost_stats && cost_stats->start) {
   unsigned long long old_cost = cost_stats->cost;
   unsigned long long cost = end_time-cost_stats->start;

   cost_stats->cost += cost;
   cost_stats->start = 0;
   cost_stats->call_times++;

   if (cost_stats->cost < old_cost) {

    cost_stats->overflow++;
   }
  }
 }
 rcu_read_unlock();
}
