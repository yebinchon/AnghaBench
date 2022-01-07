
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pwwn; } ;
struct TYPE_4__ {TYPE_1__ port_cfg; } ;
struct bfa_fcs_fabric_s {TYPE_2__ bport; int fcs; } ;


 int BFA_FCS_FABRIC_SM_LINK_UP ;
 int bfa_sm_send_event (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (int ,int ) ;

void
bfa_fcs_fabric_link_up(struct bfa_fcs_fabric_s *fabric)
{
 bfa_trc(fabric->fcs, fabric->bport.port_cfg.pwwn);
 bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_LINK_UP);
}
