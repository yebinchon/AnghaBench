
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int dummy; } ;
struct lpfc_hba {int max_vports; } ;


 int kfree (struct lpfc_vport**) ;
 int lpfc_shost_from_vport (struct lpfc_vport*) ;
 int scsi_host_put (int ) ;

void
lpfc_destroy_vport_work_array(struct lpfc_hba *phba, struct lpfc_vport **vports)
{
 int i;
 if (vports == ((void*)0))
  return;
 for (i = 0; i <= phba->max_vports && vports[i] != ((void*)0); i++)
  scsi_host_put(lpfc_shost_from_vport(vports[i]));
 kfree(vports);
}
