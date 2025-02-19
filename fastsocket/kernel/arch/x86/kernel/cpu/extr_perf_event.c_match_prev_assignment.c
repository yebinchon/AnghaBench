
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {scalar_t__ idx; scalar_t__ last_cpu; scalar_t__ last_tag; } ;
struct cpu_hw_events {scalar_t__* assign; scalar_t__* tags; } ;


 scalar_t__ smp_processor_id () ;

__attribute__((used)) static inline int match_prev_assignment(struct hw_perf_event *hwc,
     struct cpu_hw_events *cpuc,
     int i)
{
 return hwc->idx == cpuc->assign[i] &&
  hwc->last_cpu == smp_processor_id() &&
  hwc->last_tag == cpuc->tags[i];
}
