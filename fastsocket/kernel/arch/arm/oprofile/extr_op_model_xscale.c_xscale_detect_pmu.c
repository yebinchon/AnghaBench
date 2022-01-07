
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int num_counters; int name; } ;
struct TYPE_4__ {int name; int num_counters; } ;


 int CPUID_ID ;
 int ENODEV ;
 size_t PMU_XSC1 ;
 size_t PMU_XSC2 ;
 TYPE_3__ op_xscale_spec ;
 TYPE_1__* pmu ;
 TYPE_1__* pmu_parms ;
 int pr_debug (char*,int ) ;
 int read_cpuid (int ) ;

__attribute__((used)) static int xscale_detect_pmu(void)
{
 int ret = 0;
 u32 id;

 id = (read_cpuid(CPUID_ID) >> 13) & 0x7;

 switch (id) {
 case 1:
  pmu = &pmu_parms[PMU_XSC1];
  break;
 case 2:
  pmu = &pmu_parms[PMU_XSC2];
  break;
 default:
  ret = -ENODEV;
  break;
 }

 if (!ret) {
  op_xscale_spec.name = pmu->name;
  op_xscale_spec.num_counters = pmu->num_counters;
  pr_debug("xscale_detect_pmu: detected %s PMU\n", pmu->name);
 }

 return ret;
}
