
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int DEBUGCTLMSR_FREEZE_LBRS_ON_PMI ;
 int DEBUGCTLMSR_LBR ;
 int MSR_IA32_DEBUGCTLMSR ;
 int rdmsrl (int ,int) ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void __intel_pmu_lbr_disable(void)
{
 u64 debugctl;

 rdmsrl(MSR_IA32_DEBUGCTLMSR, debugctl);
 debugctl &= ~(DEBUGCTLMSR_LBR | DEBUGCTLMSR_FREEZE_LBRS_ON_PMI);
 wrmsrl(MSR_IA32_DEBUGCTLMSR, debugctl);
}
