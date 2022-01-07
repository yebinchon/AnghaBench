
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lpfc_vport {int fc_rscn_flush; int fc_rscn_id_cnt; int fc_flag; int ** fc_rscn_id_list; struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int host_lock; } ;


 int FC_RSCN_DISCOVERY ;
 int FC_RSCN_MODE ;
 int lpfc_can_disctmo (struct lpfc_vport*) ;
 int lpfc_in_buf_free (struct lpfc_hba*,int *) ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

void
lpfc_els_flush_rscn(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 struct lpfc_hba *phba = vport->phba;
 int i;

 spin_lock_irq(shost->host_lock);
 if (vport->fc_rscn_flush) {

  spin_unlock_irq(shost->host_lock);
  return;
 }

 vport->fc_rscn_flush = 1;
 spin_unlock_irq(shost->host_lock);

 for (i = 0; i < vport->fc_rscn_id_cnt; i++) {
  lpfc_in_buf_free(phba, vport->fc_rscn_id_list[i]);
  vport->fc_rscn_id_list[i] = ((void*)0);
 }
 spin_lock_irq(shost->host_lock);
 vport->fc_rscn_id_cnt = 0;
 vport->fc_flag &= ~(FC_RSCN_MODE | FC_RSCN_DISCOVERY);
 spin_unlock_irq(shost->host_lock);
 lpfc_can_disctmo(vport);

 vport->fc_rscn_flush = 0;
}
