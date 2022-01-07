
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_fcs_lport_scn_s {TYPE_1__* port; int fcxp_wqe; } ;
typedef enum port_scn_event { ____Placeholder_port_scn_event } port_scn_event ;
struct TYPE_4__ {int bfa; } ;
struct TYPE_3__ {TYPE_2__* fcs; } ;




 int bfa_fcs_lport_scn_sm_offline ;
 int bfa_fcs_lport_scn_sm_scr ;
 int bfa_fcxp_walloc_cancel (int ,int *) ;
 int bfa_sm_fault (TYPE_2__*,int) ;
 int bfa_sm_set_state (struct bfa_fcs_lport_scn_s*,int ) ;

__attribute__((used)) static void
bfa_fcs_lport_scn_sm_sending_scr(struct bfa_fcs_lport_scn_s *scn,
    enum port_scn_event event)
{
 switch (event) {
 case 128:
  bfa_sm_set_state(scn, bfa_fcs_lport_scn_sm_scr);
  break;

 case 129:
  bfa_sm_set_state(scn, bfa_fcs_lport_scn_sm_offline);
  bfa_fcxp_walloc_cancel(scn->port->fcs->bfa, &scn->fcxp_wqe);
  break;

 default:
  bfa_sm_fault(scn->port->fcs, event);
 }
}
