
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct TYPE_5__ {int pwwn; } ;
struct TYPE_7__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_2__* fcs; int lps; TYPE_4__ bport; } ;
typedef enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_6__ {struct bfa_s* bfa; } ;







 int BFA_LPS_SM_OFFLINE ;
 int BFA_PORT_TOPOLOGY_LOOP ;
 int bfa_fcport_get_topology (struct bfa_s*) ;
 int bfa_fcs_fabric_delete (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_notify_offline (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_sm_auth_failed ;
 int bfa_fcs_fabric_sm_deleting ;
 int bfa_fcs_fabric_sm_linkdown ;
 int bfa_fcs_fabric_sm_stopping ;
 int bfa_fcs_fabric_stop (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_lport_offline (TYPE_4__*) ;
 int bfa_sm_fault (TYPE_2__*,int) ;
 int bfa_sm_send_event (int ,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (TYPE_2__*,int) ;

void
bfa_fcs_fabric_sm_online(struct bfa_fcs_fabric_s *fabric,
    enum bfa_fcs_fabric_event event)
{
 struct bfa_s *bfa = fabric->fcs->bfa;

 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_linkdown);
  if (bfa_fcport_get_topology(bfa) == BFA_PORT_TOPOLOGY_LOOP) {
   bfa_fcs_lport_offline(&fabric->bport);
  } else {
   bfa_sm_send_event(fabric->lps, BFA_LPS_SM_OFFLINE);
   bfa_fcs_fabric_notify_offline(fabric);
  }
  break;

 case 130:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_deleting);
  bfa_fcs_fabric_delete(fabric);
  break;

 case 128:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_stopping);
  bfa_fcs_fabric_stop(fabric);
  break;

 case 132:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_auth_failed);
  bfa_sm_send_event(fabric->lps, BFA_LPS_SM_OFFLINE);
  break;

 case 131:
  break;

 default:
  bfa_sm_fault(fabric->fcs, event);
 }
}
