
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioim_s {int iotag; int bfa; int hcb_qe; TYPE_1__* iosp; int reqq; int itnim; } ;
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
 int bfa_ioim_sm_cleanup ;
 int bfa_ioim_sm_cleanup_qfull ;
 int bfa_ioim_sm_hcb ;
 int bfa_ioim_sm_hcb_free ;
 int bfa_reqq_wait (int ,int ,int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_ioim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int bfa_trc (int ,int) ;
 int qwait ;

__attribute__((used)) static void
bfa_ioim_sm_abort(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
 bfa_trc(ioim->bfa, ioim->iotag);
 bfa_trc(ioim->bfa, event);

 switch (event) {
 case 132:
 case 133:
 case 130:
 case 129:
  break;

 case 135:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb_free);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
         ioim);
  break;

 case 136:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
         ioim);
  break;

 case 131:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_abort,
         ioim);
  break;

 case 134:
  WARN_ON(ioim->iosp->abort_explicit != BFA_TRUE);
  ioim->iosp->abort_explicit = BFA_FALSE;

  if (bfa_ioim_send_abort(ioim))
   bfa_sm_set_state(ioim, bfa_ioim_sm_cleanup);
  else {
   bfa_sm_set_state(ioim, bfa_ioim_sm_cleanup_qfull);
   bfa_stats(ioim->itnim, qwait);
   bfa_reqq_wait(ioim->bfa, ioim->reqq,
       &ioim->iosp->reqq_wait);
  }
  break;

 case 128:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_failed,
         ioim);
  break;

 default:
  bfa_sm_fault(ioim->bfa, event);
 }
}
