
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int config1; } ;
struct hw_perf_event_extra {int config; scalar_t__ reg; int idx; } ;
struct TYPE_5__ {struct hw_perf_event_extra extra_reg; } ;
struct perf_event {TYPE_1__ attr; TYPE_2__ hw; } ;
struct extra_reg {int event; int config_mask; int valid_mask; scalar_t__ msr; int idx; } ;
struct TYPE_6__ {struct extra_reg* extra_regs; } ;


 int EINVAL ;
 TYPE_3__ x86_pmu ;

__attribute__((used)) static int x86_pmu_extra_regs(u64 config, struct perf_event *event)
{
 struct hw_perf_event_extra *reg;
 struct extra_reg *er;

 reg = &event->hw.extra_reg;

 if (!x86_pmu.extra_regs)
  return 0;

 for (er = x86_pmu.extra_regs; er->msr; er++) {
  if (er->event != (config & er->config_mask))
   continue;
  if (event->attr.config1 & ~er->valid_mask)
   return -EINVAL;

  reg->idx = er->idx;
  reg->config = event->attr.config1;
  reg->reg = er->msr;
  break;
 }
 return 0;
}
