
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {int status; struct scsi_ctrl_blk* next; } ;
struct initio_host {int avail_lock; int * last_avail; struct scsi_ctrl_blk* first_avail; } ;


 int SCB_RENT ;
 int printk (char*,struct scsi_ctrl_blk*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct scsi_ctrl_blk *initio_alloc_scb(struct initio_host *host)
{
 struct scsi_ctrl_blk *scb;
 unsigned long flags;

 spin_lock_irqsave(&host->avail_lock, flags);
 if ((scb = host->first_avail) != ((void*)0)) {



  if ((host->first_avail = scb->next) == ((void*)0))
   host->last_avail = ((void*)0);
  scb->next = ((void*)0);
  scb->status = SCB_RENT;
 }
 spin_unlock_irqrestore(&host->avail_lock, flags);
 return scb;
}
