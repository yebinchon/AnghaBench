
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lbr_nr; int lbr_to; int lbr_from; int lbr_tos; } ;


 int MSR_LBR_CORE_FROM ;
 int MSR_LBR_CORE_TO ;
 int MSR_LBR_TOS ;
 int pr_cont (char*) ;
 TYPE_1__ x86_pmu ;

void intel_pmu_lbr_init_atom(void)
{
 x86_pmu.lbr_nr = 8;
 x86_pmu.lbr_tos = MSR_LBR_TOS;
 x86_pmu.lbr_from = MSR_LBR_CORE_FROM;
 x86_pmu.lbr_to = MSR_LBR_CORE_TO;

 pr_cont("8-deep LBR, ");
}
