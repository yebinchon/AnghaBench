
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pwwn; } ;
struct TYPE_4__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {int fcs; int lps; TYPE_2__ bport; } ;
typedef enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;







 int BFA_LPS_SM_OFFLINE ;
 int bfa_fcs_fabric_delete (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_notify_online (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_sm_auth_failed ;
 int bfa_fcs_fabric_sm_deleting ;
 int bfa_fcs_fabric_sm_evfp ;
 int bfa_fcs_fabric_sm_linkdown ;
 int bfa_fcs_fabric_sm_online ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_send_event (int ,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_fabric_sm_auth(struct bfa_fcs_fabric_s *fabric,
         enum bfa_fcs_fabric_event event)
{
 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, event);

 switch (event) {
 case 132:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_auth_failed);
  bfa_sm_send_event(fabric->lps, BFA_LPS_SM_OFFLINE);
  break;

 case 131:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_online);
  bfa_fcs_fabric_notify_online(fabric);
  break;

 case 128:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_evfp);
  break;

 case 129:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_linkdown);
  bfa_sm_send_event(fabric->lps, BFA_LPS_SM_OFFLINE);
  break;

 case 130:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_deleting);
  bfa_fcs_fabric_delete(fabric);
  break;

 default:
  bfa_sm_fault(fabric->fcs, event);
 }
}
