
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;


 int BFA_FCPORT_MOD (struct bfa_s*) ;
 int BFA_FCPORT_SM_STOP ;
 int bfa_sm_send_event (int ,int ) ;
 int bfa_trunk_iocdisable (struct bfa_s*) ;

__attribute__((used)) static void
bfa_fcport_stop(struct bfa_s *bfa)
{
 bfa_sm_send_event(BFA_FCPORT_MOD(bfa), BFA_FCPORT_SM_STOP);
 bfa_trunk_iocdisable(bfa);
}
