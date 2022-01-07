
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lbr_nr; int lbr_sel_map; int lbr_sel_mask; int lbr_to; int lbr_from; int lbr_tos; } ;


 int LBR_SEL_MASK ;
 int MSR_LBR_NHM_FROM ;
 int MSR_LBR_NHM_TO ;
 int MSR_LBR_TOS ;
 int nhm_lbr_sel_map ;
 int pr_cont (char*) ;
 TYPE_1__ x86_pmu ;

void intel_pmu_lbr_init_nhm(void)
{
 x86_pmu.lbr_nr = 16;
 x86_pmu.lbr_tos = MSR_LBR_TOS;
 x86_pmu.lbr_from = MSR_LBR_NHM_FROM;
 x86_pmu.lbr_to = MSR_LBR_NHM_TO;

 x86_pmu.lbr_sel_mask = LBR_SEL_MASK;
 x86_pmu.lbr_sel_map = nhm_lbr_sel_map;

 pr_cont("16-deep LBR, ");
}
