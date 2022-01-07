
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {int idx; int event_base; int config_base; scalar_t__ last_tag; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {scalar_t__* tags; } ;


 int UNCORE_PMC_IDX_FIXED ;
 int uncore_event_ctl (struct intel_uncore_box*,int) ;
 int uncore_fixed_ctl (struct intel_uncore_box*) ;
 int uncore_fixed_ctr (struct intel_uncore_box*) ;
 int uncore_perf_ctr (struct intel_uncore_box*,int) ;

__attribute__((used)) static void uncore_assign_hw_event(struct intel_uncore_box *box, struct perf_event *event, int idx)
{
 struct hw_perf_event *hwc = &event->hw;

 hwc->idx = idx;
 hwc->last_tag = ++box->tags[idx];

 if (hwc->idx == UNCORE_PMC_IDX_FIXED) {
  hwc->event_base = uncore_fixed_ctr(box);
  hwc->config_base = uncore_fixed_ctl(box);
  return;
 }

 hwc->config_base = uncore_event_ctl(box, hwc->idx);
 hwc->event_base = uncore_perf_ctr(box, hwc->idx);
}
