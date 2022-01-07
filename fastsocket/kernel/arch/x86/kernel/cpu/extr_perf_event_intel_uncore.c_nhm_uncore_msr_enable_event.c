
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_perf_event {scalar_t__ idx; int config; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;
struct intel_uncore_box {int dummy; } ;


 int NHM_UNC_FIXED_CTR_CTL_EN ;
 int SNB_UNC_CTL_EN ;
 scalar_t__ UNCORE_PMC_IDX_FIXED ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void nhm_uncore_msr_enable_event(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;

 if (hwc->idx < UNCORE_PMC_IDX_FIXED)
  wrmsrl(hwc->config_base, hwc->config | SNB_UNC_CTL_EN);
 else
  wrmsrl(hwc->config_base, NHM_UNC_FIXED_CTR_CTL_EN);
}
