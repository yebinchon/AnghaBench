
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ARCH_PERFMON_EVENTSEL_ENABLE ;
 int MSR_P6_EVNTSEL0 ;
 int rdmsrl (int ,int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void p6_pmu_disable_all(void)
{
 u64 val;


 rdmsrl(MSR_P6_EVNTSEL0, val);
 val &= ~ARCH_PERFMON_EVENTSEL_ENABLE;
 wrmsrl(MSR_P6_EVNTSEL0, val);
}
