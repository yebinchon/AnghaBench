
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;
struct cpu_hw_events {int dummy; } ;


 int intel_put_shared_regs_event_constraints (struct cpu_hw_events*,struct perf_event*) ;

__attribute__((used)) static void intel_put_event_constraints(struct cpu_hw_events *cpuc,
     struct perf_event *event)
{
 intel_put_shared_regs_event_constraints(cpuc, event);
}
