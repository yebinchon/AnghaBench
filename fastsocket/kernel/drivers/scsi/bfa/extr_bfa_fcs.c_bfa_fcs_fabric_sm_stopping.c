
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct TYPE_5__ {int pwwn; } ;
struct TYPE_6__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_3__* fcs; int lps; TYPE_2__ bport; } ;
typedef enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_7__ {struct bfa_s* bfa; } ;





 int BFA_LPS_SM_LOGOUT ;
 int BFA_PORT_TOPOLOGY_LOOP ;
 int bfa_fcport_get_topology (struct bfa_s*) ;
 int bfa_fcs_fabric_sm_cleanup ;
 int bfa_fcs_fabric_sm_created ;
 int bfa_sm_fault (TYPE_3__*,int) ;
 int bfa_sm_send_event (int ,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (TYPE_3__*,int) ;

__attribute__((used)) static void
bfa_fcs_fabric_sm_stopping(struct bfa_fcs_fabric_s *fabric,
      enum bfa_fcs_fabric_event event)
{
 struct bfa_s *bfa = fabric->fcs->bfa;

 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, event);

 switch (event) {
 case 128:
  if (bfa_fcport_get_topology(bfa) == BFA_PORT_TOPOLOGY_LOOP) {
   bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_created);
  } else {
   bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_cleanup);
   bfa_sm_send_event(fabric->lps, BFA_LPS_SM_LOGOUT);
  }
  break;

 case 129:
  break;

 case 130:
  if (bfa_fcport_get_topology(bfa) == BFA_PORT_TOPOLOGY_LOOP)
   bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_created);
  else
   bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_cleanup);
  break;

 default:
  bfa_sm_fault(fabric->fcs, event);
 }
}
