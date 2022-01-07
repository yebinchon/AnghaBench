
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int idx; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct event_constraint {int dummy; } ;
struct cpu_hw_events {struct amd_nb* amd_nb; } ;
struct amd_nb {struct event_constraint* event_constraints; struct perf_event** owners; } ;
struct TYPE_2__ {int num_counters; } ;


 scalar_t__ amd_has_nb (struct cpu_hw_events*) ;
 scalar_t__ amd_is_nb_event (struct hw_perf_event*) ;
 struct perf_event* cmpxchg (struct perf_event**,int *,struct perf_event*) ;
 struct event_constraint emptyconstraint ;
 struct event_constraint unconstrained ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static struct event_constraint *
amd_get_event_constraints(struct cpu_hw_events *cpuc, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct amd_nb *nb = cpuc->amd_nb;
 struct perf_event *old = ((void*)0);
 int max = x86_pmu.num_counters;
 int i, j, k = -1;




 if (!(amd_has_nb(cpuc) && amd_is_nb_event(hwc)))
  return &unconstrained;
 for (i = 0; i < max; i++) {



  if (k == -1 && !nb->owners[i])
   k = i;


  if (nb->owners[i] == event)
   goto done;
 }




 if (hwc->idx != -1) {

  i = hwc->idx;
 } else if (k != -1) {

  i = k;
 } else {





  i = 0;
 }
 j = i;
 do {
  old = cmpxchg(nb->owners+i, ((void*)0), event);
  if (!old)
   break;
  if (++i == max)
   i = 0;
 } while (i != j);
done:
 if (!old)
  return &nb->event_constraints[i];

 return &emptyconstraint;
}
