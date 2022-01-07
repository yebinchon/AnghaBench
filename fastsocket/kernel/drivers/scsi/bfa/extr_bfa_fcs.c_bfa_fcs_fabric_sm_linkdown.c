
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_s {int dummy; } ;
struct TYPE_5__ {int pwwn; } ;
struct TYPE_7__ {int pid; TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_2__* fcs; TYPE_4__ bport; int fab_type; } ;
typedef enum bfa_fcs_fabric_event { ____Placeholder_bfa_fcs_fabric_event } bfa_fcs_fabric_event ;
struct TYPE_6__ {struct bfa_s* bfa; } ;


 int BFA_FCS_FABRIC_LOOP ;





 int BFA_PORT_TOPOLOGY_LOOP ;
 int bfa_fcport_get_myalpa (struct bfa_s*) ;
 int bfa_fcport_get_topology (struct bfa_s*) ;
 int bfa_fcs_fabric_delete (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_login (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_set_opertype (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_fabric_sm_cleanup ;
 int bfa_fcs_fabric_sm_deleting ;
 int bfa_fcs_fabric_sm_flogi ;
 int bfa_fcs_fabric_sm_online ;
 int bfa_fcs_fabric_stop (struct bfa_fcs_fabric_s*) ;
 int bfa_fcs_lport_online (TYPE_4__*) ;
 int bfa_hton3b (int ) ;
 int bfa_sm_fault (TYPE_2__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (TYPE_2__*,int) ;

__attribute__((used)) static void
bfa_fcs_fabric_sm_linkdown(struct bfa_fcs_fabric_s *fabric,
      enum bfa_fcs_fabric_event event)
{
 struct bfa_s *bfa = fabric->fcs->bfa;

 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_trc(fabric->fcs, event);

 switch (event) {
 case 131:
  if (bfa_fcport_get_topology(bfa) != BFA_PORT_TOPOLOGY_LOOP) {
   bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_flogi);
   bfa_fcs_fabric_login(fabric);
   break;
  }
  fabric->fab_type = BFA_FCS_FABRIC_LOOP;
  fabric->bport.pid = bfa_fcport_get_myalpa(bfa);
  fabric->bport.pid = bfa_hton3b(fabric->bport.pid);
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_online);
  bfa_fcs_fabric_set_opertype(fabric);
  bfa_fcs_lport_online(&fabric->bport);
  break;

 case 129:
 case 130:
  break;

 case 132:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_deleting);
  bfa_fcs_fabric_delete(fabric);
  break;

 case 128:
  bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_cleanup);
  bfa_fcs_fabric_stop(fabric);
  break;

 default:
  bfa_sm_fault(fabric->fcs, event);
 }
}
