
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioim_s {int iotag; int bfa; int hcb_qe; TYPE_1__* iosp; } ;
typedef enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
struct TYPE_2__ {int reqq_wait; int abort_explicit; } ;


 int BFA_FALSE ;






 int BFA_TRUE ;
 int WARN_ON (int) ;
 int __bfa_cb_ioim_abort ;
 int __bfa_cb_ioim_failed ;
 int bfa_cb_queue (int ,int *,int ,struct bfa_ioim_s*) ;
 int bfa_ioim_move_to_comp_q (struct bfa_ioim_s*) ;
 int bfa_ioim_send_abort (struct bfa_ioim_s*) ;
 int bfa_ioim_sm_abort ;
 int bfa_ioim_sm_cleanup_qfull ;
 int bfa_ioim_sm_hcb ;
 int bfa_ioim_sm_hcb_free ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_ioim_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_ioim_sm_abort_qfull(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
 bfa_trc(ioim->bfa, ioim->iotag);
 bfa_trc(ioim->bfa, event);

 switch (event) {
 case 128:
  bfa_sm_set_state(ioim, bfa_ioim_sm_abort);
  bfa_ioim_send_abort(ioim);
  break;

 case 133:
  WARN_ON(ioim->iosp->abort_explicit != BFA_TRUE);
  ioim->iosp->abort_explicit = BFA_FALSE;
  bfa_sm_set_state(ioim, bfa_ioim_sm_cleanup_qfull);
  break;

 case 131:
 case 132:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_reqq_wcancel(&ioim->iosp->reqq_wait);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
         ioim);
  break;

 case 130:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb_free);
  bfa_reqq_wcancel(&ioim->iosp->reqq_wait);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
         ioim);
  break;

 case 129:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_reqq_wcancel(&ioim->iosp->reqq_wait);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_failed,
         ioim);
  break;

 default:
  bfa_sm_fault(ioim->bfa, event);
 }
}
