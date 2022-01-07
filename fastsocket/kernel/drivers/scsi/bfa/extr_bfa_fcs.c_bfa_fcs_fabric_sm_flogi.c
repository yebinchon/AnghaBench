
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pwwn; } ;
struct TYPE_6__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_3__* fcs; int lps; int bb_credit; int fab_type; int delay_timer; int is_auth; int auth_reqd; TYPE_2__ bport; } ;
typedef enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_7__ {int bfa; } ;


 int BFA_FCS_FABRIC_N2N ;
 int BFA_FCS_FABRIC_RETRY_DELAY ;






 int BFA_FCS_FABRIC_SWITCHED ;
 int BFA_LPS_SM_OFFLINE ;
 int bfa_fcport_set_tx_bbcredit (int ,int ) ;
 int bfa_fcs_fabric_delay ;
 int bfa_fcs_fabric_delete (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_notify_online (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_set_opertype (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_sm_auth ;
 int bfa_fcs_fabric_sm_deleting ;
 int bfa_fcs_fabric_sm_flogi_retry ;
 int bfa_fcs_fabric_sm_linkdown ;
 int bfa_fcs_fabric_sm_loopback ;
 int bfa_fcs_fabric_sm_nofabric ;
 int bfa_fcs_fabric_sm_online ;
 int bfa_sm_fault (TYPE_3__*,int) ;
 int bfa_sm_send_event (int ,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_timer_start (int ,int *,int ,struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (TYPE_3__*,int) ;

__attribute__((used)) static void
bfa_fcs_fabric_sm_flogi(struct bfa_fcs_fabric_s *fabric,
   enum bfa_fcs_fabric_event event)
{
 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, event);

 switch (event) {
 case 133:

  bfa_fcport_set_tx_bbcredit(fabric->fcs->bfa,
        fabric->bb_credit);
  fabric->fab_type = BFA_FCS_FABRIC_SWITCHED;

  if (fabric->auth_reqd && fabric->is_auth) {
   bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_auth);
   bfa_trc(fabric->fcs, event);
  } else {
   bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_online);
   bfa_fcs_fabric_notify_online(fabric);
  }
  break;

 case 128:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_flogi_retry);
  bfa_timer_start(fabric->fcs->bfa, &fabric->delay_timer,
    bfa_fcs_fabric_delay, fabric,
    BFA_FCS_FABRIC_RETRY_DELAY);
  break;

 case 130:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_loopback);
  bfa_sm_send_event(fabric->lps, BFA_LPS_SM_OFFLINE);
  bfa_fcs_fabric_set_opertype(fabric);
  break;

 case 129:
  fabric->fab_type = BFA_FCS_FABRIC_N2N;
  bfa_fcport_set_tx_bbcredit(fabric->fcs->bfa,
        fabric->bb_credit);
  bfa_fcs_fabric_notify_online(fabric);
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_nofabric);
  break;

 case 131:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_linkdown);
  bfa_sm_send_event(fabric->lps, BFA_LPS_SM_OFFLINE);
  break;

 case 132:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_deleting);
  bfa_sm_send_event(fabric->lps, BFA_LPS_SM_OFFLINE);
  bfa_fcs_fabric_delete(fabric);
  break;

 default:
  bfa_sm_fault(fabric->fcs, event);
 }
}
