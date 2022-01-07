
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_vport_s {int dummy; } ;


 int BFA_FCS_VPORT_SM_OFFLINE ;
 int BFA_FCS_VPORT_SM_ONLINE ;
 int bfa_sm_send_event (struct bfa_fcs_vport_s*,int ) ;

void
bfa_cb_lps_cvl_event(void *bfad, void *uarg)
{
 struct bfa_fcs_vport_s *vport = uarg;


 bfa_sm_send_event(vport, BFA_FCS_VPORT_SM_OFFLINE);
 bfa_sm_send_event(vport, BFA_FCS_VPORT_SM_ONLINE);
}
