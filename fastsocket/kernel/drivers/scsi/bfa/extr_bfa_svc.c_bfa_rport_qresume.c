
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_rport_s {int dummy; } ;


 int BFA_RPORT_SM_QRESUME ;
 int bfa_sm_send_event (struct bfa_rport_s*,int ) ;

__attribute__((used)) static void
bfa_rport_qresume(void *cbarg)
{
 struct bfa_rport_s *rp = cbarg;

 bfa_sm_send_event(rp, BFA_RPORT_SM_QRESUME);
}
