
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;


 int BFA_FCPORT_MOD (struct bfa_s*) ;
 int BFA_FCPORT_SM_START ;
 int bfa_sm_send_event (int ,int ) ;

__attribute__((used)) static void
bfa_fcport_start(struct bfa_s *bfa)
{
 bfa_sm_send_event(BFA_FCPORT_MOD(bfa), BFA_FCPORT_SM_START);
}
