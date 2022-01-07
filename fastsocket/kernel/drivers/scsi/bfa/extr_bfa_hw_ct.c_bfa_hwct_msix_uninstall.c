
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * handler; } ;
struct bfa_s {TYPE_1__ msix; } ;


 int BFI_MSIX_CT_MAX ;
 int bfa_hwct_msix_dummy ;

void
bfa_hwct_msix_uninstall(struct bfa_s *bfa)
{
 int i;

 for (i = 0; i < BFI_MSIX_CT_MAX; i++)
  bfa->msix.handler[i] = bfa_hwct_msix_dummy;
}
