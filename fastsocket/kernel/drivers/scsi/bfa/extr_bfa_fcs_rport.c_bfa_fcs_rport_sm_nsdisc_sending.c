
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int fcxp_wqe; int timer; int ns_retries; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int bfa; } ;
 int bfa_fcs_rport_del_timeout ;
 int bfa_fcs_rport_fcs_online_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_free (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_plogiacc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_sm_fc4_fcs_online ;
 int bfa_fcs_rport_sm_nsdisc_sent ;
 int bfa_fcs_rport_sm_offline ;
 int bfa_fcs_rport_sm_plogiacc_sending ;
 int bfa_fcs_rport_sm_uninit ;
 int bfa_fcs_rport_timeout ;
 int bfa_fcxp_walloc_cancel (int ,int *) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_nsdisc_sending(struct bfa_fcs_rport_s *rport,
  enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 134:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_nsdisc_sent);
  break;

 case 136:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_uninit);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_free(rport);
  break;

 case 130:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_plogiacc_sending);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_send_plogiacc(rport, ((void*)0));
  break;

 case 135:
 case 132:
 case 128:
 case 129:
  break;

 case 137:
  rport->ns_retries = 0;
  break;

 case 133:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_offline);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_timer_start(rport->fcs->bfa, &rport->timer,
    bfa_fcs_rport_timeout, rport,
    bfa_fcs_rport_del_timeout);
  break;

 case 131:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_fcs_online);
  bfa_fcxp_walloc_cancel(rport->fcs->bfa, &rport->fcxp_wqe);
  bfa_fcs_rport_fcs_online_action(rport);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
