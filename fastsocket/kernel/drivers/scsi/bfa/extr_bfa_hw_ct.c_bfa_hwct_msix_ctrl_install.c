
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nvecs; int * handler; } ;
struct bfa_s {TYPE_1__ msix; } ;


 size_t BFI_MSIX_LPU_ERR_CT ;
 int bfa_msix_all ;
 int bfa_msix_lpu_err ;

void
bfa_hwct_msix_ctrl_install(struct bfa_s *bfa)
{
 if (bfa->msix.nvecs == 0)
  return;

 if (bfa->msix.nvecs == 1)
  bfa->msix.handler[BFI_MSIX_LPU_ERR_CT] = bfa_msix_all;
 else
  bfa->msix.handler[BFI_MSIX_LPU_ERR_CT] = bfa_msix_lpu_err;
}
