
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hw_perf_event {int config; } ;
struct cpu_hw_events {int pcr; } ;
struct TYPE_2__ {int (* write ) (int ) ;} ;


 int mask_for_index (int) ;
 TYPE_1__* pcr_ops ;
 int stub1 (int ) ;

__attribute__((used)) static inline void sparc_pmu_enable_event(struct cpu_hw_events *cpuc, struct hw_perf_event *hwc, int idx)
{
 u64 val, mask = mask_for_index(idx);

 val = cpuc->pcr;
 val &= ~mask;
 val |= hwc->config;
 cpuc->pcr = val;

 pcr_ops->write(cpuc->pcr);
}
