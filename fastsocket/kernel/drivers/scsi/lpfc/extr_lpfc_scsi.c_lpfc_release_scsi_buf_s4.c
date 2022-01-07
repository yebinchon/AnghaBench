
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int iocb_flag; } ;
struct lpfc_scsi_buf {int list; TYPE_2__ cur_iocbq; int * pCmd; scalar_t__ exch_busy; scalar_t__ prot_seg_cnt; scalar_t__ nonsg_phys; scalar_t__ seg_cnt; } ;
struct TYPE_3__ {int abts_scsi_buf_list_lock; int lpfc_abts_scsi_buf_list; } ;
struct lpfc_hba {int scsi_buf_list_put_lock; int lpfc_scsi_buf_list_put; TYPE_1__ sli4_hba; } ;


 int LPFC_IO_FCP ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_release_scsi_buf_s4(struct lpfc_hba *phba, struct lpfc_scsi_buf *psb)
{
 unsigned long iflag = 0;

 psb->seg_cnt = 0;
 psb->nonsg_phys = 0;
 psb->prot_seg_cnt = 0;

 if (psb->exch_busy) {
  spin_lock_irqsave(&phba->sli4_hba.abts_scsi_buf_list_lock,
     iflag);
  psb->pCmd = ((void*)0);
  list_add_tail(&psb->list,
   &phba->sli4_hba.lpfc_abts_scsi_buf_list);
  spin_unlock_irqrestore(&phba->sli4_hba.abts_scsi_buf_list_lock,
     iflag);
 } else {
  psb->pCmd = ((void*)0);
  psb->cur_iocbq.iocb_flag = LPFC_IO_FCP;
  spin_lock_irqsave(&phba->scsi_buf_list_put_lock, iflag);
  list_add_tail(&psb->list, &phba->lpfc_scsi_buf_list_put);
  spin_unlock_irqrestore(&phba->scsi_buf_list_put_lock, iflag);
 }
}
