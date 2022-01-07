
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hw_perf_event {int config; int config_base; } ;
struct perf_event {struct hw_perf_event hw; } ;


 int P4_CCCR_ENABLE ;
 int P4_CCCR_OVF ;
 int P4_CCCR_RESERVED ;
 int checking_wrmsrl (int ,int) ;
 scalar_t__ p4_config_unpack_cccr (int ) ;

__attribute__((used)) static inline void p4_pmu_disable_event(struct perf_event *event)
{
 struct hw_perf_event *hwc = &event->hw;






 (void)checking_wrmsrl(hwc->config_base,
  (u64)(p4_config_unpack_cccr(hwc->config)) &
   ~P4_CCCR_ENABLE & ~P4_CCCR_OVF & ~P4_CCCR_RESERVED);
}
