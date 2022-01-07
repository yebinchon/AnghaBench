
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct bfa_iocfc_s {TYPE_2__* bfa; } ;
typedef enum iocfc_event { ____Placeholder_iocfc_event } iocfc_event ;
struct TYPE_8__ {int stop_hcb_qe; int op_status; } ;
struct TYPE_9__ {TYPE_1__ iocfc; } ;


 int BFA_STATUS_OK ;




 int bfa_cb_queue (TYPE_2__*,int *,int ,TYPE_2__*) ;
 int bfa_fsm_set_state (struct bfa_iocfc_s*,int ) ;
 int bfa_iocfc_disable_submod (TYPE_2__*) ;
 int bfa_iocfc_sm_stopped ;
 int bfa_iocfc_stop_cb ;
 int bfa_isr_disable (TYPE_2__*) ;
 int bfa_sm_fault (TYPE_2__*,int) ;
 int bfa_trc (TYPE_2__*,int) ;

__attribute__((used)) static void
bfa_iocfc_sm_stopping(struct bfa_iocfc_s *iocfc, enum iocfc_event event)
{
 bfa_trc(iocfc->bfa, event);

 switch (event) {
 case 129:
  bfa_isr_disable(iocfc->bfa);
  bfa_iocfc_disable_submod(iocfc->bfa);
  bfa_fsm_set_state(iocfc, bfa_iocfc_sm_stopped);
  iocfc->bfa->iocfc.op_status = BFA_STATUS_OK;
  bfa_cb_queue(iocfc->bfa, &iocfc->bfa->iocfc.stop_hcb_qe,
        bfa_iocfc_stop_cb, iocfc->bfa);
  break;

 case 128:
 case 130:
 case 131:
  break;

 default:
  bfa_sm_fault(iocfc->bfa, event);
  break;
 }
}
