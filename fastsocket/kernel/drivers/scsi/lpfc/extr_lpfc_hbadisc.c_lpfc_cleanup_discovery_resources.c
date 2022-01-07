
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;


 int lpfc_disc_flush_list (struct lpfc_vport*) ;
 int lpfc_els_flush_cmd (struct lpfc_vport*) ;
 int lpfc_els_flush_rscn (struct lpfc_vport*) ;

void
lpfc_cleanup_discovery_resources(struct lpfc_vport *vport)
{
 lpfc_els_flush_rscn(vport);
 lpfc_els_flush_cmd(vport);
 lpfc_disc_flush_list(vport);
}
