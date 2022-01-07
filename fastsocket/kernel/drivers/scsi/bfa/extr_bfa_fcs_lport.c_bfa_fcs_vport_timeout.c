
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fdisc_timeouts; } ;
struct bfa_fcs_vport_s {TYPE_1__ vport_stats; } ;


 int BFA_FCS_VPORT_SM_TIMEOUT ;
 int bfa_sm_send_event (struct bfa_fcs_vport_s*,int ) ;

__attribute__((used)) static void
bfa_fcs_vport_timeout(void *vport_arg)
{
 struct bfa_fcs_vport_s *vport = (struct bfa_fcs_vport_s *) vport_arg;

 vport->vport_stats.fdisc_timeouts++;
 bfa_sm_send_event(vport, BFA_FCS_VPORT_SM_TIMEOUT);
}
