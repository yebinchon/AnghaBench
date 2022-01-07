
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x86_vendor; int x86; } ;


 int MSR_ARCH_PERFMON_EVENTSEL0 ;
 unsigned int MSR_F15H_PERF_CTL ;
 int MSR_K7_EVNTSEL0 ;
 int MSR_P4_BSU_ESCR0 ;
 int MSR_P6_EVNTSEL0 ;
 int X86_FEATURE_ARCH_PERFMON ;


 TYPE_1__ boot_cpu_data ;
 int cpu_has (TYPE_1__*,int ) ;

__attribute__((used)) static inline unsigned int nmi_evntsel_msr_to_bit(unsigned int msr)
{

 switch (boot_cpu_data.x86_vendor) {
 case 129:
  if (msr >= MSR_F15H_PERF_CTL)
   return (msr - MSR_F15H_PERF_CTL) >> 1;
  return msr - MSR_K7_EVNTSEL0;
 case 128:
  if (cpu_has(&boot_cpu_data, X86_FEATURE_ARCH_PERFMON))
   return msr - MSR_ARCH_PERFMON_EVENTSEL0;

  switch (boot_cpu_data.x86) {
  case 6:
   return msr - MSR_P6_EVNTSEL0;
  case 15:
   return msr - MSR_P4_BSU_ESCR0;
  }
 }
 return 0;

}
