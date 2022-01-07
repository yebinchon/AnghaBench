
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfa_iocfc_s {TYPE_2__* bfa; } ;
struct TYPE_6__ {int dis_hcb_qe; int op_status; } ;
struct TYPE_7__ {TYPE_1__ iocfc; } ;


 int BFA_STATUS_OK ;
 int bfa_cb_queue (TYPE_2__*,int *,int ,TYPE_2__*) ;
 int bfa_iocfc_disable_cb ;
 int bfa_iocfc_disable_submod (TYPE_2__*) ;
 int bfa_isr_disable (TYPE_2__*) ;

__attribute__((used)) static void
bfa_iocfc_sm_disabled_entry(struct bfa_iocfc_s *iocfc)
{
 bfa_isr_disable(iocfc->bfa);
 bfa_iocfc_disable_submod(iocfc->bfa);
 iocfc->bfa->iocfc.op_status = BFA_STATUS_OK;
 bfa_cb_queue(iocfc->bfa, &iocfc->bfa->iocfc.dis_hcb_qe,
       bfa_iocfc_disable_cb, iocfc->bfa);
}
