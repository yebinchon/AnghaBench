
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {int dummy; } ;
struct event_constraint {int weight; } ;
struct cpu_hw_events {int dummy; } ;
struct TYPE_2__ {int (* put_event_constraints ) (struct cpu_hw_events*,struct perf_event*) ;struct event_constraint* (* get_event_constraints ) (struct cpu_hw_events*,struct perf_event*) ;} ;


 int ENOSPC ;
 scalar_t__ IS_ERR (struct cpu_hw_events*) ;
 int PTR_ERR (struct cpu_hw_events*) ;
 struct cpu_hw_events* allocate_fake_cpuc () ;
 int free_fake_cpuc (struct cpu_hw_events*) ;
 struct event_constraint* stub1 (struct cpu_hw_events*,struct perf_event*) ;
 int stub2 (struct cpu_hw_events*,struct perf_event*) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int validate_event(struct perf_event *event)
{
 struct cpu_hw_events *fake_cpuc;
 struct event_constraint *c;
 int ret = 0;

 fake_cpuc = allocate_fake_cpuc();
 if (IS_ERR(fake_cpuc))
  return PTR_ERR(fake_cpuc);

 c = x86_pmu.get_event_constraints(fake_cpuc, event);

 if (!c || !c->weight)
  ret = -ENOSPC;

 if (x86_pmu.put_event_constraints)
  x86_pmu.put_event_constraints(fake_cpuc, event);

 free_fake_cpuc(fake_cpuc);

 return ret;
}
