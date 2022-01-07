
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rpsc_speed; } ;
struct bfa_fcs_rport_s {TYPE_2__ rpf; TYPE_1__* port; int pid; int fcs; } ;
struct TYPE_3__ {int fcs; } ;


 int RPFSM_EVENT_RPORT_OFFLINE ;
 scalar_t__ __fcs_min_cfg (int ) ;
 int bfa_sm_send_event (TYPE_2__*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_rpf_rport_offline(struct bfa_fcs_rport_s *rport)
{
 bfa_trc(rport->fcs, rport->pid);

 if (__fcs_min_cfg(rport->port->fcs))
  return;

 rport->rpf.rpsc_speed = 0;
 bfa_sm_send_event(&rport->rpf, RPFSM_EVENT_RPORT_OFFLINE);
}
