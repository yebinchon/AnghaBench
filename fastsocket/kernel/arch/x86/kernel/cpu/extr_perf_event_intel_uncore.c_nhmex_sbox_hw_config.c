
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int config; unsigned long long config1; unsigned long long config2; } ;
struct hw_perf_event_extra {unsigned long long config; scalar_t__ idx; int reg; } ;
struct TYPE_4__ {struct hw_perf_event_extra branch_reg; struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_2__ attr; TYPE_1__ hw; } ;
struct intel_uncore_box {TYPE_3__* pmu; } ;
struct TYPE_6__ {scalar_t__ pmu_idx; } ;


 int NHMEX_S0_MSR_MM_CFG ;
 int NHMEX_S1_MSR_MM_CFG ;
 int NHMEX_S_PMON_MM_CFG_EN ;

__attribute__((used)) static int nhmex_sbox_hw_config(struct intel_uncore_box *box, struct perf_event *event)
{
 struct hw_perf_event_extra *reg1 = &event->hw.extra_reg;
 struct hw_perf_event_extra *reg2 = &event->hw.branch_reg;

 if (event->attr.config & NHMEX_S_PMON_MM_CFG_EN) {
  reg1->config = event->attr.config1;
  reg2->config = event->attr.config2;
 } else {
  reg1->config = ~0ULL;
  reg2->config = ~0ULL;
 }

 if (box->pmu->pmu_idx == 0)
  reg1->reg = NHMEX_S0_MSR_MM_CFG;
 else
  reg1->reg = NHMEX_S1_MSR_MM_CFG;

 reg1->idx = 0;

 return 0;
}
