
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unit_perf_monitor {int dummy; } ;
struct cpu_cost_stats {int start; } ;


 int UP_GET_CPU_CYCLES (int ) ;
 int g_up_monitor ;
 struct cpu_cost_stats* get_monitorer_stats (struct unit_perf_monitor*,char const*) ;
 struct unit_perf_monitor* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void up_start_monitor(const char *name)
{
 struct unit_perf_monitor *monitor;

 rcu_read_lock();
 monitor = rcu_dereference(g_up_monitor);
 if (monitor) {
  struct cpu_cost_stats *cost_stats = get_monitorer_stats(monitor, name);

  if (cost_stats) {
   UP_GET_CPU_CYCLES(cost_stats->start);
  }
 }
 rcu_read_unlock();
}
