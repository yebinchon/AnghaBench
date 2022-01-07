
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {int pwwn; int pid; int fcs; int fcxp; int ns_retries; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;


 int BFA_FCS_RPORT_MAX_RETRIES ;
 int bfa_fcs_rport_hal_offline_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_send_adisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_send_nsdisc (struct bfa_fcs_rport_s*,int *) ;
 int bfa_fcs_rport_sm_adisc_online_sending ;
 int bfa_fcs_rport_sm_fc4_logorcv ;
 int bfa_fcs_rport_sm_fc4_logosend ;
 int bfa_fcs_rport_sm_fc4_offline ;
 int bfa_fcs_rport_sm_nsquery_sending ;
 int bfa_fcxp_discard (int ) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_nsquery(struct bfa_fcs_rport_s *rport, enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 137:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_adisc_online_sending);
  bfa_fcs_rport_send_adisc(rport, ((void*)0));
  break;

 case 133:
  rport->ns_retries++;
  if (rport->ns_retries < BFA_FCS_RPORT_MAX_RETRIES) {
   bfa_sm_set_state(rport,
      bfa_fcs_rport_sm_nsquery_sending);
   bfa_fcs_rport_send_nsdisc(rport, ((void*)0));
  } else {
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
   bfa_fcs_rport_hal_offline_action(rport);
  }
  break;

 case 135:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logosend);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 134:
  break;

 case 131:
 case 128:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logorcv);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 case 130:
 case 136:
 case 129:
 case 132:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  bfa_fcxp_discard(rport->fcxp);
  bfa_fcs_rport_hal_offline_action(rport);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
 }
}
