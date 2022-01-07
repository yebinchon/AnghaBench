
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; } ;
struct bfa_s {TYPE_1__ modules; } ;


 int BFA_FALSE ;
 int BFA_FCPORT_MOD (struct bfa_s*) ;
 int BFA_FCPORT_SM_DPORTDISABLE ;
 int bfa_port_set_dportenabled (int *,int ) ;
 int bfa_sm_send_event (int ,int ) ;

void
bfa_fcport_dportdisable(struct bfa_s *bfa)
{



 bfa_sm_send_event(BFA_FCPORT_MOD(bfa), BFA_FCPORT_SM_DPORTDISABLE);
 bfa_port_set_dportenabled(&bfa->modules.port, BFA_FALSE);
}
