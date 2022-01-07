
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_fabric_s {struct bfa_fcs_s* fcs; int bport; int wc; int lps; int vf_q; int vport_q; } ;
struct bfa_fcs_s {int bfa; struct bfa_fcs_fabric_s fabric; } ;


 int FC_VF_ID_NULL ;
 int INIT_LIST_HEAD (int *) ;
 int WARN_ON (int) ;
 int bfa_fcs_fabric_delete_comp ;
 int bfa_fcs_fabric_sm_uninit ;
 int bfa_fcs_lport_attach (int *,struct bfa_fcs_s*,int ,int *) ;
 int bfa_lps_alloc (int ) ;
 int bfa_sm_set_state (struct bfa_fcs_fabric_s*,int ) ;
 int bfa_wc_init (int *,int ,struct bfa_fcs_fabric_s*) ;
 int bfa_wc_up (int *) ;
 int memset (struct bfa_fcs_fabric_s*,int ,int) ;

void
bfa_fcs_fabric_attach(struct bfa_fcs_s *fcs)
{
 struct bfa_fcs_fabric_s *fabric;

 fabric = &fcs->fabric;
 memset(fabric, 0, sizeof(struct bfa_fcs_fabric_s));




 fabric->fcs = fcs;
 INIT_LIST_HEAD(&fabric->vport_q);
 INIT_LIST_HEAD(&fabric->vf_q);
 fabric->lps = bfa_lps_alloc(fcs->bfa);
 WARN_ON(!fabric->lps);





 bfa_wc_init(&fabric->wc, bfa_fcs_fabric_delete_comp, fabric);
 bfa_wc_up(&fabric->wc);

 bfa_sm_set_state(fabric, bfa_fcs_fabric_sm_uninit);
 bfa_fcs_lport_attach(&fabric->bport, fabric->fcs, FC_VF_ID_NULL, ((void*)0));
}
