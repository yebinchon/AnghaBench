
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_sched {int dummy; } ;


 int __perf_sched_find_counter (struct perf_sched*) ;
 int perf_sched_restore_state (struct perf_sched*) ;

__attribute__((used)) static bool perf_sched_find_counter(struct perf_sched *sched)
{
 while (!__perf_sched_find_counter(sched)) {
  if (!perf_sched_restore_state(sched))
   return 0;
 }

 return 1;
}
