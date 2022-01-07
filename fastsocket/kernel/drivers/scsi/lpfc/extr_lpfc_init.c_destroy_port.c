
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int listentry; struct lpfc_hba* phba; } ;
struct lpfc_hba {int hbalock; } ;
struct Scsi_Host {int dummy; } ;


 int fc_remove_host (struct Scsi_Host*) ;
 int list_del_init (int *) ;
 int lpfc_cleanup (struct lpfc_vport*) ;
 int lpfc_debugfs_terminate (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int scsi_remove_host (struct Scsi_Host*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void
destroy_port(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;

 lpfc_debugfs_terminate(vport);
 fc_remove_host(shost);
 scsi_remove_host(shost);

 spin_lock_irq(&phba->hbalock);
 list_del_init(&vport->listentry);
 spin_unlock_irq(&phba->hbalock);

 lpfc_cleanup(vport);
 return;
}
