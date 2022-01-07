
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_flag; int phba; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_DISC_DELAYED ;
 int lpfc_do_scr_ns_plogi (int ,struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_delayed_disc_timeout_handler(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 spin_lock_irq(shost->host_lock);
 if (!(vport->fc_flag & FC_DISC_DELAYED)) {
  spin_unlock_irq(shost->host_lock);
  return;
 }
 vport->fc_flag &= ~FC_DISC_DELAYED;
 spin_unlock_irq(shost->host_lock);

 lpfc_do_scr_ns_plogi(vport->phba, vport);
}
