
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int x86_perf_event_set_period (struct perf_event*) ;
 int x86_perf_event_update (struct perf_event*) ;

int intel_pmu_save_and_restart(struct perf_event *event)
{
 x86_perf_event_update(event);
 return x86_perf_event_set_period(event);
}
