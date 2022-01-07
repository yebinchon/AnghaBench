
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_flag; scalar_t__ fc_rscn_id_cnt; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_RSCN_DISCOVERY ;
 int FC_RSCN_MODE ;
 int lpfc_els_handle_rscn (struct lpfc_vport*) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_end_rscn(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);

 if (vport->fc_flag & FC_RSCN_MODE) {




  if (vport->fc_rscn_id_cnt ||
      (vport->fc_flag & FC_RSCN_DISCOVERY) != 0)
   lpfc_els_handle_rscn(vport);
  else {
   spin_lock_irq(shost->host_lock);
   vport->fc_flag &= ~FC_RSCN_MODE;
   spin_unlock_irq(shost->host_lock);
  }
 }
}
