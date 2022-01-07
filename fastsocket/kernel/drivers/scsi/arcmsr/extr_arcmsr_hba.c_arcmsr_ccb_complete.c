
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;
struct CommandControlBlock {int list; int startdone; struct scsi_cmnd* pcmd; struct AdapterControlBlock* acb; } ;
struct AdapterControlBlock {int ccblist_lock; int ccb_free_list; int ccboutstandingcount; } ;


 int ARCMSR_CCB_DONE ;
 int arcmsr_pci_unmap_dma (struct CommandControlBlock*) ;
 int atomic_dec (int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static void arcmsr_ccb_complete(struct CommandControlBlock *ccb)
{
 struct AdapterControlBlock *acb = ccb->acb;
 struct scsi_cmnd *pcmd = ccb->pcmd;
 unsigned long flags;
 atomic_dec(&acb->ccboutstandingcount);
 arcmsr_pci_unmap_dma(ccb);
 ccb->startdone = ARCMSR_CCB_DONE;
 spin_lock_irqsave(&acb->ccblist_lock, flags);
 list_add_tail(&ccb->list, &acb->ccb_free_list);
 spin_unlock_irqrestore(&acb->ccblist_lock, flags);
 pcmd->scsi_done(pcmd);
}
