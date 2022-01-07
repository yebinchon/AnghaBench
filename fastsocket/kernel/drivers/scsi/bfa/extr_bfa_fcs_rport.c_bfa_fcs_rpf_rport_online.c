
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_fcs_rport_s {int rpf; TYPE_1__* port; int pid; int fcs; } ;
struct TYPE_2__ {int fabric; int fcs; } ;


 int RPFSM_EVENT_RPORT_ONLINE ;
 scalar_t__ __fcs_min_cfg (int ) ;
 scalar_t__ bfa_fcs_fabric_is_switched (int ) ;
 int bfa_sm_send_event (int *,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_rpf_rport_online(struct bfa_fcs_rport_s *rport)
{
 bfa_trc(rport->fcs, rport->pid);

 if (__fcs_min_cfg(rport->port->fcs))
  return;

 if (bfa_fcs_fabric_is_switched(rport->port->fabric))
  bfa_sm_send_event(&rport->rpf, RPFSM_EVENT_RPORT_ONLINE);
}
