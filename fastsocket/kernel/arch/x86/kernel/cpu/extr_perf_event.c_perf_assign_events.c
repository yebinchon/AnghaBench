
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t event; int counter; int unassigned; } ;
struct perf_sched {TYPE_1__ state; } ;
struct event_constraint {int dummy; } ;


 int perf_sched_find_counter (struct perf_sched*) ;
 int perf_sched_init (struct perf_sched*,struct event_constraint**,int,int,int) ;
 scalar_t__ perf_sched_next_event (struct perf_sched*) ;

int perf_assign_events(struct event_constraint **constraints, int n,
   int wmin, int wmax, int *assign)
{
 struct perf_sched sched;

 perf_sched_init(&sched, constraints, n, wmin, wmax);

 do {
  if (!perf_sched_find_counter(&sched))
   break;
  if (assign)
   assign[sched.state.event] = sched.state.counter;
 } while (perf_sched_next_event(&sched));

 return sched.state.unassigned;
}
