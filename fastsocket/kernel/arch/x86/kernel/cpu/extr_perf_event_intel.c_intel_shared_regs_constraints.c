
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw_perf_event_extra {scalar_t__ idx; } ;
struct TYPE_2__ {struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ hw; } ;
struct event_constraint {int dummy; } ;
struct cpu_hw_events {int dummy; } ;


 scalar_t__ EXTRA_REG_NONE ;
 struct event_constraint* __intel_shared_reg_get_constraints (struct cpu_hw_events*,struct perf_event*,struct hw_perf_event_extra*) ;
 int __intel_shared_reg_put_constraints (struct cpu_hw_events*,struct hw_perf_event_extra*) ;
 struct event_constraint emptyconstraint ;

__attribute__((used)) static struct event_constraint *
intel_shared_regs_constraints(struct cpu_hw_events *cpuc,
         struct perf_event *event)
{
 struct event_constraint *c = ((void*)0), *d;
 struct hw_perf_event_extra *xreg, *breg;

 xreg = &event->hw.extra_reg;
 if (xreg->idx != EXTRA_REG_NONE) {
  c = __intel_shared_reg_get_constraints(cpuc, event, xreg);
  if (c == &emptyconstraint)
   return c;
 }
 breg = &event->hw.branch_reg;
 if (breg->idx != EXTRA_REG_NONE) {
  d = __intel_shared_reg_get_constraints(cpuc, event, breg);
  if (d == &emptyconstraint) {
   __intel_shared_reg_put_constraints(cpuc, xreg);
   c = d;
  }
 }
 return c;
}
