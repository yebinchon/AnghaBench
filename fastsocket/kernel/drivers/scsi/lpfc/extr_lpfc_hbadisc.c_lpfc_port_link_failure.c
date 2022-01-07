
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;


 int FC_VPORT_LINKDOWN ;
 int lpfc_can_disctmo (struct lpfc_vport*) ;
 int lpfc_cleanup_rcv_buffers (struct lpfc_vport*) ;
 int lpfc_cleanup_rpis (struct lpfc_vport*,int ) ;
 int lpfc_els_flush_cmd (struct lpfc_vport*) ;
 int lpfc_els_flush_rscn (struct lpfc_vport*) ;
 int lpfc_vport_set_state (struct lpfc_vport*,int ) ;

void
lpfc_port_link_failure(struct lpfc_vport *vport)
{
 lpfc_vport_set_state(vport, FC_VPORT_LINKDOWN);


 lpfc_cleanup_rcv_buffers(vport);


 lpfc_els_flush_rscn(vport);


 lpfc_els_flush_cmd(vport);

 lpfc_cleanup_rpis(vport, 0);


 lpfc_can_disctmo(vport);
}
