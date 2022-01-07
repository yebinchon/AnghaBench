
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bfa_fcs_vport_s {int lport; int fdisc_retries; TYPE_1__* lps; } ;
struct TYPE_2__ {int lsrjt_rsn; int lsrjt_expl; } ;


 int BFA_FCS_VPORT_MAX_RETRIES ;
 int BFA_FCS_VPORT_SM_FABRIC_MAX ;
 int BFA_FCS_VPORT_SM_RSP_DUP_WWN ;
 int BFA_FCS_VPORT_SM_RSP_ERROR ;
 int BFA_LPORT_AEN_NPIV_DUP_WWN ;
 int BFA_LPORT_AEN_NPIV_FABRIC_MAX ;
 int BFA_LPORT_AEN_NPIV_UNKNOWN ;



 int __vport_fcs (struct bfa_fcs_vport_s*) ;
 int bfa_fcs_vport_aen_post (int *,int ) ;
 int bfa_sm_send_event (struct bfa_fcs_vport_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_fcs_vport_fdisc_rejected(struct bfa_fcs_vport_s *vport)
{
 u8 lsrjt_rsn = vport->lps->lsrjt_rsn;
 u8 lsrjt_expl = vport->lps->lsrjt_expl;

 bfa_trc(__vport_fcs(vport), lsrjt_rsn);
 bfa_trc(__vport_fcs(vport), lsrjt_expl);


 switch (vport->lps->lsrjt_expl) {
 case 128:
 case 129:
  if (vport->fdisc_retries < BFA_FCS_VPORT_MAX_RETRIES)
   bfa_sm_send_event(vport, BFA_FCS_VPORT_SM_RSP_ERROR);
  else {
   bfa_fcs_vport_aen_post(&vport->lport,
     BFA_LPORT_AEN_NPIV_DUP_WWN);
   bfa_sm_send_event(vport, BFA_FCS_VPORT_SM_RSP_DUP_WWN);
  }
  break;

 case 130:




  if (vport->fdisc_retries < BFA_FCS_VPORT_MAX_RETRIES)
   bfa_sm_send_event(vport, BFA_FCS_VPORT_SM_RSP_ERROR);
  else {
   bfa_fcs_vport_aen_post(&vport->lport,
     BFA_LPORT_AEN_NPIV_FABRIC_MAX);
   bfa_sm_send_event(vport, BFA_FCS_VPORT_SM_FABRIC_MAX);
  }
  break;

 default:
  if (vport->fdisc_retries == 0)
   bfa_fcs_vport_aen_post(&vport->lport,
     BFA_LPORT_AEN_NPIV_UNKNOWN);
  bfa_sm_send_event(vport, BFA_FCS_VPORT_SM_RSP_ERROR);
 }
}
