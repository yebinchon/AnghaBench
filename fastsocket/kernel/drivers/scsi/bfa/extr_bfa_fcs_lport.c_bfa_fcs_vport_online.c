
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fab_no_npiv; int fab_online; } ;
struct bfa_fcs_vport_s {TYPE_1__ vport_stats; } ;


 int BFA_FCS_VPORT_SM_ONLINE ;
 int __vport_fabric (struct bfa_fcs_vport_s*) ;
 scalar_t__ bfa_fcs_fabric_npiv_capable (int ) ;
 int bfa_sm_send_event (struct bfa_fcs_vport_s*,int ) ;

void
bfa_fcs_vport_online(struct bfa_fcs_vport_s *vport)
{
 vport->vport_stats.fab_online++;
 if (bfa_fcs_fabric_npiv_capable(__vport_fabric(vport)))
  bfa_sm_send_event(vport, BFA_FCS_VPORT_SM_ONLINE);
 else
  vport->vport_stats.fab_no_npiv++;
}
