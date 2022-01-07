
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; int old_pid; TYPE_1__* fcs; int fcxp; int timer; int ns_retries; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int bfa; } ;


 int BFA_FCS_RPORT_MAX_RETRIES ;
 int bfa_fcs_rport_del_timeout ;
 int bfa_fcs_rport_fcs_online_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_free (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_logo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_nsdisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogi (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_plogiacc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_prlo_acc (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_fc4_fcs_online ;
 int bfa_fcs_rport_sm_nsdisc_sending ;
 int bfa_fcs_rport_sm_offline ;
 int bfa_fcs_rport_sm_plogi_sending ;
 int bfa_fcs_rport_sm_plogiacc_sending ;
 int bfa_fcs_rport_sm_uninit ;
 int bfa_fcs_rport_timeout ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_nsdisc_sent(struct bfa_fcs_rport_s *rport,
   enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 137:
 case 136:
  if (rport->pid) {
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogi_sending);
   bfa_fcs_rport_send_plogi(rport, ((void*)0));
  } else {
   bfa_sm_set_state(rport,
     bfa_fcs_rport_sm_nsdisc_sending);
   rport->ns_retries = 0;
   bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
  }
  break;

 case 133:
  rport->ns_retries++;
  if (rport->ns_retries < BFA_FCS_RPORT_MAX_RETRIES) {
   bfa_sm_set_state(rport,
     bfa_fcs_rport_sm_nsdisc_sending);
   bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
  } else {
   rport->old_pid = rport->pid;
   rport->pid = 0;
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
   bfa_timer_start(rport->fcs->bfa, &rport->timer,
     bfa_fcs_rport_timeout, rport,
     bfa_fcs_rport_del_timeout);
  };
  break;

 case 135:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_free(rport);
  break;

 case 129:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogiacc_sending);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_send_plogiacc(rport, ((void*)0));
  break;

 case 132:
  rport->pid = 0;
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
  bfa_fcxp_discard(rport->fcxp);
  bfa_timer_start(rport->fcs->bfa, &rport->timer,
    bfa_fcs_rport_timeout, rport,
    bfa_fcs_rport_del_timeout);
  break;


 case 128:
  bfa_fcs_rport_send_prlo_acc(rport);
  break;
 case 134:



  break;

 case 131:



  bfa_fcs_rport_send_logo_acc(rport);
  break;

 case 130:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_fcs_online);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_fcs_online_action(rport);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
