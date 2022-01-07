
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_vport_s {int lps; } ;
typedef enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;






 int BFA_LPS_SM_OFFLINE ;
 int __vport_fcs (struct bfa_fcs_vport_s*) ;
 int __vport_pwwn (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_vport_free (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_vport_sm_uninit ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_send_event (int ,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_vport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_vport_sm_logo(struct bfa_fcs_vport_s *vport,
   enum bfa_fcs_vport_event event)
{
 bfa_trc(__vport_fcs(vport), __vport_pwwn(vport));
 bfa_trc(__vport_fcs(vport), event);

 switch (event) {
 case 130:
  bfa_sm_send_event(vport->lps, BFA_LPS_SM_OFFLINE);




 case 128:
 case 129:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_uninit);
  bfa_fcs_vport_free(vport);
  break;

 case 131:
  break;

 default:
  bfa_sm_fault(__vport_fcs(vport), event);
 }
}
