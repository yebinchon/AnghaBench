
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_rport_s {scalar_t__ bfa_rport; } ;


 int BFA_RPORT_SM_OFFLINE ;
 int bfa_cb_rport_offline (struct bfa_fcs_rport_s*) ;
 int bfa_sm_send_event (scalar_t__,int ) ;

__attribute__((used)) static void
bfa_fcs_rport_hal_offline(struct bfa_fcs_rport_s *rport)
{
 if (rport->bfa_rport)
  bfa_sm_send_event(rport->bfa_rport, BFA_RPORT_SM_OFFLINE);
 else
  bfa_cb_rport_offline(rport);
}
