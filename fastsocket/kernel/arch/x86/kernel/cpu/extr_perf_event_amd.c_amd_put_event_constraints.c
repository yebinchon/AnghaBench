
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event {int dummy; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct cpu_hw_events {struct amd_nb* amd_nb; } ;
struct amd_nb {struct perf_event** owners; } ;
struct TYPE_2__ {int num_counters; } ;


 scalar_t__ amd_has_nb (struct cpu_hw_events*) ;
 scalar_t__ amd_is_nb_event (struct hw_perf_event*) ;
 int cmpxchg (struct perf_event**,struct perf_event*,int *) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void amd_put_event_constraints(struct cpu_hw_events *cpuc,
          struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;
 struct amd_nb *nb = cpuc->amd_nb;
 int i;




 if (!(amd_has_nb(cpuc) && amd_is_nb_event(hwc)))
  return;
 for (i = 0; i < x86_pmu.num_counters; i++) {
  if (nb->owners[i] == event) {
   (void)cmpxchg(nb->owners+i, event, ((void*)0));
   break;
  }
 }
}
