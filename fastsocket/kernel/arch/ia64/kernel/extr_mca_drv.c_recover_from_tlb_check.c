
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int check_info; } ;
typedef TYPE_1__ sal_log_mod_error_info_t ;
typedef int peidx_table_t ;
struct TYPE_4__ {scalar_t__ op; scalar_t__ itc; scalar_t__ dtc; scalar_t__ itr; } ;
typedef TYPE_2__ pal_tlb_check_info_t ;


 scalar_t__ PAL_TLB_CHECK_OP_PURGE ;
 int fatal_mca (char*) ;
 int mca_recovered (char*) ;
 scalar_t__ peidx_tlb_check (int *,int ) ;

__attribute__((used)) static int
recover_from_tlb_check(peidx_table_t *peidx)
{
 sal_log_mod_error_info_t *smei;
 pal_tlb_check_info_t *ptci;

 smei = (sal_log_mod_error_info_t *)peidx_tlb_check(peidx, 0);
 ptci = (pal_tlb_check_info_t *)&(smei->check_info);





 if (ptci->op == PAL_TLB_CHECK_OP_PURGE
     && !(ptci->itr || ptci->dtc || ptci->itc))
  return fatal_mca("Duplicate TLB entry");

 return mca_recovered("TLB check recovered");
}
