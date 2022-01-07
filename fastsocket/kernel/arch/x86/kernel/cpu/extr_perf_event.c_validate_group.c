
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {struct perf_event* group_leader; } ;
struct cpu_hw_events {int n_events; } ;
struct TYPE_2__ {int (* schedule_events ) (struct cpu_hw_events*,int,int *) ;} ;


 int ENOSPC ;
 scalar_t__ IS_ERR (struct cpu_hw_events*) ;
 int PTR_ERR (struct cpu_hw_events*) ;
 struct cpu_hw_events* allocate_fake_cpuc () ;
 int collect_events (struct cpu_hw_events*,struct perf_event*,int) ;
 int free_fake_cpuc (struct cpu_hw_events*) ;
 int stub1 (struct cpu_hw_events*,int,int *) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static int validate_group(struct perf_event *event)
{
 struct perf_event *leader = event->group_leader;
 struct cpu_hw_events *fake_cpuc;
 int ret = -ENOSPC, n;

 fake_cpuc = allocate_fake_cpuc();
 if (IS_ERR(fake_cpuc))
  return PTR_ERR(fake_cpuc);






 n = collect_events(fake_cpuc, leader, 1);
 if (n < 0)
  goto out;

 fake_cpuc->n_events = n;
 n = collect_events(fake_cpuc, event, 0);
 if (n < 0)
  goto out;

 fake_cpuc->n_events = n;

 ret = x86_pmu.schedule_events(fake_cpuc, n, ((void*)0));

out:
 free_fake_cpuc(fake_cpuc);
 return ret;
}
