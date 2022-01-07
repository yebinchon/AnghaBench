
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {int dummy; } ;


 int NHM_UNC_GLOBAL_CTL_EN_FC ;
 int NHM_UNC_GLOBAL_CTL_EN_PC_ALL ;
 int NHM_UNC_PERF_GLOBAL_CTL ;
 int wrmsrl (int ,int) ;

__attribute__((used)) static void nhm_uncore_msr_enable_box(struct intel_uncore_box *box)
{
 wrmsrl(NHM_UNC_PERF_GLOBAL_CTL, NHM_UNC_GLOBAL_CTL_EN_PC_ALL | NHM_UNC_GLOBAL_CTL_EN_FC);
}
