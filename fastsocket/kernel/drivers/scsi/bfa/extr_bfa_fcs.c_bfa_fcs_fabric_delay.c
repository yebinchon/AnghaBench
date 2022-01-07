
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_fabric_s {int dummy; } ;


 int BFA_FCS_FABRIC_SM_DELAYED ;
 int bfa_sm_send_event (struct bfa_fcs_fabric_s*,int ) ;

__attribute__((used)) static void
bfa_fcs_fabric_delay(void *cbarg)
{
 struct bfa_fcs_fabric_s *fabric = cbarg;

 bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_DELAYED);
}
