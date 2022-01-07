
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iocb_flag; } ;
struct lpfc_scsi_buf {int list; TYPE_1__ cur_iocbq; int * pCmd; scalar_t__ prot_seg_cnt; scalar_t__ nonsg_phys; scalar_t__ seg_cnt; } ;
struct lpfc_hba {int scsi_buf_list_put_lock; int lpfc_scsi_buf_list_put; } ;


 int LPFC_IO_FCP ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_release_scsi_buf_s3(struct lpfc_hba *phba, struct lpfc_scsi_buf *psb)
{
 unsigned long iflag = 0;

 psb->seg_cnt = 0;
 psb->nonsg_phys = 0;
 psb->prot_seg_cnt = 0;

 spin_lock_irqsave(&phba->scsi_buf_list_put_lock, iflag);
 psb->pCmd = ((void*)0);
 psb->cur_iocbq.iocb_flag = LPFC_IO_FCP;
 list_add_tail(&psb->list, &phba->lpfc_scsi_buf_list_put);
 spin_unlock_irqrestore(&phba->scsi_buf_list_put_lock, iflag);
}
