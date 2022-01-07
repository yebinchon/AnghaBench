
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioim_s {int iotag; int bfa; int hcb_qe; int io_cbfn; } ;
typedef enum bfa_ioim_event { ____Placeholder_bfa_ioim_event } bfa_ioim_event ;
 int __bfa_cb_ioim_abort ;
 int __bfa_cb_ioim_failed ;
 int bfa_cb_queue (int ,int *,int ,struct bfa_ioim_s*) ;
 int bfa_ioim_move_to_comp_q (struct bfa_ioim_s*) ;
 int bfa_ioim_notify_cleanup (struct bfa_ioim_s*) ;
 int bfa_ioim_sm_hcb ;
 int bfa_ioim_sm_hcb_free ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_ioim_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_ioim_sm_cleanup(struct bfa_ioim_s *ioim, enum bfa_ioim_event event)
{
 bfa_trc(ioim->bfa, ioim->iotag);
 bfa_trc(ioim->bfa, event);

 switch (event) {
 case 132:
 case 133:
 case 130:
 case 129:
  break;

 case 137:



  ioim->io_cbfn = __bfa_cb_ioim_abort;
  break;

 case 135:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb_free);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, ioim->io_cbfn, ioim);
  bfa_ioim_notify_cleanup(ioim);
  break;

 case 136:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, ioim->io_cbfn, ioim);
  bfa_ioim_notify_cleanup(ioim);
  break;

 case 131:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, ioim->io_cbfn, ioim);
  bfa_ioim_notify_cleanup(ioim);
  break;

 case 128:
  bfa_sm_set_state(ioim, bfa_ioim_sm_hcb);
  bfa_ioim_move_to_comp_q(ioim);
  bfa_cb_queue(ioim->bfa, &ioim->hcb_qe, __bfa_cb_ioim_failed,
         ioim);
  break;

 case 134:




  break;

 default:
  bfa_sm_fault(ioim->bfa, event);
 }
}
