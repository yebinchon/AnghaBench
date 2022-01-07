
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_vport_s {int lport; int * lps; } ;
typedef enum bfa_fcs_vport_event { ____Placeholder_bfa_fcs_vport_event } bfa_fcs_vport_event ;


 int BFA_FCS_PORT_SM_STOP ;



 int BFA_LPS_SM_OFFLINE ;
 int __vport_fcs (struct bfa_fcs_vport_s*) ;
 int __vport_pwwn (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_lport_delete (int *) ;
 int bfa_fcs_lport_offline (int *) ;
 int bfa_fcs_vport_sm_deleting ;
 int bfa_fcs_vport_sm_offline ;
 int bfa_fcs_vport_sm_stopping ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_send_event (int *,int ) ;
 int bfa_sm_set_state (struct bfa_fcs_vport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_vport_sm_online(struct bfa_fcs_vport_s *vport,
   enum bfa_fcs_vport_event event)
{
 bfa_trc(__vport_fcs(vport), __vport_pwwn(vport));
 bfa_trc(__vport_fcs(vport), event);

 switch (event) {
 case 130:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_deleting);
  bfa_fcs_lport_delete(&vport->lport);
  break;

 case 128:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_stopping);
  bfa_sm_send_event(&vport->lport, BFA_FCS_PORT_SM_STOP);
  break;

 case 129:
  bfa_sm_set_state(vport, bfa_fcs_vport_sm_offline);
  bfa_sm_send_event(vport->lps, BFA_LPS_SM_OFFLINE);
  bfa_fcs_lport_offline(&vport->lport);
  break;

 default:
  bfa_sm_fault(__vport_fcs(vport), event);
 }
}
