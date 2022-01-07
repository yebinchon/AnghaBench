
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_fabric_s {int dummy; } ;


 int BFA_FCS_FABRIC_SM_LOGOCOMP ;
 int bfa_sm_send_event (struct bfa_fcs_fabric_s*,int ) ;

void
bfa_cb_lps_flogo_comp(void *bfad, void *uarg)
{
 struct bfa_fcs_fabric_s *fabric = uarg;
 bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_LOGOCOMP);
}
