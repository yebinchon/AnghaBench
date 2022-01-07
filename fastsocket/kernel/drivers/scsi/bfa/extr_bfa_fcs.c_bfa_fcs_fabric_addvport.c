
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_fcs_vport_s {int qe; } ;
struct bfa_fcs_fabric_s {int wc; int num_vports; int vport_q; int vf_id; int fcs; } ;


 int bfa_trc (int ,int ) ;
 int bfa_wc_up (int *) ;
 int list_add_tail (int *,int *) ;

void
bfa_fcs_fabric_addvport(struct bfa_fcs_fabric_s *fabric,
   struct bfa_fcs_vport_s *vport)
{



 bfa_trc(fabric->fcs, fabric->vf_id);

 list_add_tail(&vport->qe, &fabric->vport_q);
 fabric->num_vports++;
 bfa_wc_up(&fabric->wc);
}
