
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int event; int weight; int unassigned; } ;
struct perf_sched {int max_events; int max_weight; TYPE_1__ state; struct event_constraint** constraints; } ;
struct event_constraint {int weight; } ;


 int memset (struct perf_sched*,int ,int) ;

__attribute__((used)) static void perf_sched_init(struct perf_sched *sched, struct event_constraint **c,
       int num, int wmin, int wmax)
{
 int idx;

 memset(sched, 0, sizeof(*sched));
 sched->max_events = num;
 sched->max_weight = wmax;
 sched->constraints = c;

 for (idx = 0; idx < num; idx++) {
  if (c[idx]->weight == wmin)
   break;
 }

 sched->state.event = idx;
 sched->state.weight = wmin;
 sched->state.unassigned = num;
}
