
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int x86_vendor; int x86; int x86_model; int x86_mask; } ;
struct TYPE_8__ {int evntsel; int perfctr; } ;


 int MSR_ARCH_PERFMON_EVENTSEL0 ;
 int MSR_ARCH_PERFMON_PERFCTR0 ;
 int X86_FEATURE_ARCH_PERFMON ;


 TYPE_6__ boot_cpu_data ;
 int cpu_has (TYPE_6__*,int ) ;
 TYPE_1__ intel_arch_wd_ops ;
 TYPE_1__ k7_wd_ops ;
 TYPE_1__ p4_wd_ops ;
 TYPE_1__ p6_wd_ops ;
 TYPE_1__* wd_ops ;

__attribute__((used)) static void probe_nmi_watchdog(void)
{
 switch (boot_cpu_data.x86_vendor) {
 case 129:
  if (boot_cpu_data.x86 == 6 ||
      (boot_cpu_data.x86 >= 0xf && boot_cpu_data.x86 <= 0x15))
   wd_ops = &k7_wd_ops;
  return;
 case 128:






  if ((boot_cpu_data.x86 == 6 && boot_cpu_data.x86_model == 14) ||
      ((boot_cpu_data.x86 == 6 && boot_cpu_data.x86_model == 15 &&
       boot_cpu_data.x86_mask == 4))) {
   intel_arch_wd_ops.perfctr = MSR_ARCH_PERFMON_PERFCTR0;
   intel_arch_wd_ops.evntsel = MSR_ARCH_PERFMON_EVENTSEL0;
  }
  if (cpu_has(&boot_cpu_data, X86_FEATURE_ARCH_PERFMON)) {
   wd_ops = &intel_arch_wd_ops;
   break;
  }
  switch (boot_cpu_data.x86) {
  case 6:
   if (boot_cpu_data.x86_model > 13)
    return;

   wd_ops = &p6_wd_ops;
   break;
  case 15:
   wd_ops = &p4_wd_ops;
   break;
  default:
   return;
  }
  break;
 }
}
