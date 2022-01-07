
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unit_perf_monitor {int dummy; } ;


 int g_up_monitor ;
 int insert_monitor (struct unit_perf_monitor*,char const*) ;
 struct unit_perf_monitor* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int up_add_monitor(const char *name)
{
 struct unit_perf_monitor *monitor;

 rcu_read_lock();
 monitor = rcu_dereference(g_up_monitor);
 if (monitor) {
  insert_monitor(monitor, name);
 }

 rcu_read_unlock();

 return 0;
}
