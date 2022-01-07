
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef long long u64 ;
struct perf_event_attr {scalar_t__ type; scalar_t__ config; int exclude_kernel; int freq; } ;
struct hw_perf_event {int sample_period; int last_period; long long config; int period_left; } ;
struct perf_event {struct hw_perf_event hw; struct perf_event_attr attr; } ;
struct TYPE_2__ {int max_period; scalar_t__ max_events; long long (* event_map ) (scalar_t__) ;int bts_active; int apic; } ;


 int EINVAL ;
 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ PERF_COUNT_HW_BRANCH_INSTRUCTIONS ;
 scalar_t__ PERF_TYPE_HW_CACHE ;
 scalar_t__ PERF_TYPE_RAW ;
 int is_sampling_event (struct perf_event*) ;
 int local64_set (int *,int) ;
 int set_ext_hw_attr (struct hw_perf_event*,struct perf_event*) ;
 long long stub1 (scalar_t__) ;
 TYPE_1__ x86_pmu ;

int x86_setup_perfctr(struct perf_event *event)
{
 struct perf_event_attr *attr = &event->attr;
 struct hw_perf_event *hwc = &event->hw;
 u64 config;

 if (!is_sampling_event(event)) {
  hwc->sample_period = x86_pmu.max_period;
  hwc->last_period = hwc->sample_period;
  local64_set(&hwc->period_left, hwc->sample_period);
 } else {






  if (!x86_pmu.apic)
   return -EOPNOTSUPP;
 }





 if (attr->type == PERF_TYPE_RAW)
  return 0;

 if (attr->type == PERF_TYPE_HW_CACHE)
  return set_ext_hw_attr(hwc, event);

 if (attr->config >= x86_pmu.max_events)
  return -EINVAL;




 config = x86_pmu.event_map(attr->config);

 if (config == 0)
  return -ENOENT;

 if (config == -1LL)
  return -EINVAL;




 if (attr->config == PERF_COUNT_HW_BRANCH_INSTRUCTIONS &&
     !attr->freq && hwc->sample_period == 1) {

  if (!x86_pmu.bts_active)
   return -EOPNOTSUPP;


  if (!attr->exclude_kernel)
   return -EOPNOTSUPP;
 }

 hwc->config |= config;

 return 0;
}
