
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_rport_s {int pwwn; int pid; TYPE_1__* fcs; int plogi_pending; int bfa_rport; int scsi_function; } ;
typedef enum rport_event { ____Placeholder_rport_event } rport_event ;
struct TYPE_3__ {int bfa; } ;


 int BFA_FCS_PID_IS_WKA (int) ;
 int BFA_RPORT_INITIATOR ;
 int BFA_TRUE ;
 int bfa_fcs_rpf_rport_online (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_fcs_offline_action (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_hal_online (struct bfa_fcs_rport_s*) ;
 int bfa_fcs_rport_sm_fc4_logorcv ;
 int bfa_fcs_rport_sm_fc4_logosend ;
 int bfa_fcs_rport_sm_fc4_offline ;
 int bfa_fcs_rport_sm_hal_online ;
 int bfa_fcs_rport_sm_online ;
 int bfa_rport_create (int ,struct bfa_fcs_rport_s*) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_rport_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_fcs_rport_sm_fc4_fcs_online(struct bfa_fcs_rport_s *rport,
    enum rport_event event)
{
 bfa_trc(rport->fcs, rport->pwwn);
 bfa_trc(rport->fcs, rport->pid);
 bfa_trc(rport->fcs, event);

 switch (event) {
 case 134:
  if (rport->scsi_function == BFA_RPORT_INITIATOR) {
   if (!BFA_FCS_PID_IS_WKA(rport->pid))
    bfa_fcs_rpf_rport_online(rport);
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_online);
   break;
  }

  if (!rport->bfa_rport)
   rport->bfa_rport =
    bfa_rport_create(rport->fcs->bfa, rport);

  if (rport->bfa_rport) {
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_hal_online);
   bfa_fcs_rport_hal_online(rport);
  } else {
   bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logosend);
   bfa_fcs_rport_fcs_offline_action(rport);
  }
  break;

 case 130:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  rport->plogi_pending = BFA_TRUE;
  bfa_fcs_rport_fcs_offline_action(rport);
  break;

 case 131:
 case 133:
 case 137:
 case 135:
 case 128:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_offline);
  bfa_fcs_rport_fcs_offline_action(rport);
  break;

 case 132:
 case 129:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logorcv);
  bfa_fcs_rport_fcs_offline_action(rport);
  break;

 case 136:
  bfa_sm_set_state(rport, bfa_fcs_rport_sm_fc4_logosend);
  bfa_fcs_rport_fcs_offline_action(rport);
  break;

 default:
  bfa_sm_fault(rport->fcs, event);
  break;
 }
}
