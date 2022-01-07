
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfa_iocfc_s {TYPE_2__* bfa; } ;
typedef enum iocfc_event { ____Placeholder_iocfc_event } iocfc_event ;
struct TYPE_6__ {int dis_hcb_qe; int op_status; } ;
struct TYPE_7__ {TYPE_1__ iocfc; int ioc; } ;


 int BFA_STATUS_OK ;





 int bfa_cb_queue (TYPE_2__*,int *,int ,TYPE_2__*) ;
 int bfa_fsm_set_state (struct bfa_iocfc_s*,int ) ;
 int bfa_ioc_disable (int *) ;
 int bfa_iocfc_disable_cb ;
 int bfa_iocfc_sm_dconf_read ;
 int bfa_iocfc_sm_stopped ;
 int bfa_iocfc_sm_stopping ;
 int bfa_sm_fault (TYPE_2__*,int) ;
 int bfa_trc (TYPE_2__*,int) ;

__attribute__((used)) static void
bfa_iocfc_sm_init_failed(struct bfa_iocfc_s *iocfc, enum iocfc_event event)
{
 bfa_trc(iocfc->bfa, event);

 switch (event) {
 case 128:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_stopping);
  break;
 case 132:
  bfa_ioc_disable(&iocfc->bfa->ioc);
  break;
 case 130:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_dconf_read);
  break;
 case 131:
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_stopped);
  iocfc->bfa->iocfc.op_status = BFA_STATUS_OK;
  bfa_cb_queue(iocfc->bfa, &iocfc->bfa->iocfc.dis_hcb_qe,
        bfa_iocfc_disable_cb, iocfc->bfa);
  break;
 case 129:
  break;
 default:
  bfa_sm_fault(iocfc->bfa, event);
  break;
 }
}
