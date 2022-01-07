
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_fabric_s {int lps; } ;
struct bfa_fcs_s {struct bfa_fcs_fabric_s fabric; } ;


 int BFA_FCS_FABRIC_SM_DELETE ;
 int bfa_lps_delete (int ) ;
 int bfa_sm_send_event (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_trc (struct bfa_fcs_s*,int ) ;

void
bfa_fcs_fabric_modexit(struct bfa_fcs_s *fcs)
{
 struct bfa_fcs_fabric_s *fabric;

 bfa_trc(fcs, 0);




 fabric = &fcs->fabric;
 bfa_lps_delete(fabric->lps);
 bfa_sm_send_event(fabric, BFA_FCS_FABRIC_SM_DELETE);
}
