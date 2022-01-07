
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hw_perf_event {int idx; int config; int config_base; } ;
struct TYPE_2__ {int version; } ;


 int ARCH_PERFMON_EVENTSEL_ANY ;
 int ARCH_PERFMON_EVENTSEL_OS ;
 int ARCH_PERFMON_EVENTSEL_USR ;
 int X86_PMC_IDX_FIXED ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void intel_pmu_enable_fixed(struct hw_perf_event *hwc)
{
 int idx = hwc->idx - X86_PMC_IDX_FIXED;
 u64 ctrl_val, bits, mask;






 bits = 0x8ULL;
 if (hwc->config & ARCH_PERFMON_EVENTSEL_USR)
  bits |= 0x2;
 if (hwc->config & ARCH_PERFMON_EVENTSEL_OS)
  bits |= 0x1;




 if (x86_pmu.version > 2 && hwc->config & ARCH_PERFMON_EVENTSEL_ANY)
  bits |= 0x4;

 bits <<= (idx * 4);
 mask = 0xfULL << (idx * 4);

 rdmsrl(hwc->config_base, ctrl_val);
 ctrl_val &= ~mask;
 ctrl_val |= bits;
 wrmsrl(hwc->config_base, ctrl_val);
}
