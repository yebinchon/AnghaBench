
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {struct scsi_ctrl_blk* next; scalar_t__ status; int * srb; } ;
struct initio_host {int avail_lock; struct scsi_ctrl_blk* last_avail; struct scsi_ctrl_blk* first_avail; } ;


 int printk (char*,struct scsi_ctrl_blk*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void initio_release_scb(struct initio_host * host, struct scsi_ctrl_blk * cmnd)
{
 unsigned long flags;




 spin_lock_irqsave(&(host->avail_lock), flags);
 cmnd->srb = ((void*)0);
 cmnd->status = 0;
 cmnd->next = ((void*)0);
 if (host->last_avail != ((void*)0)) {
  host->last_avail->next = cmnd;
  host->last_avail = cmnd;
 } else {
  host->first_avail = cmnd;
  host->last_avail = cmnd;
 }
 spin_unlock_irqrestore(&(host->avail_lock), flags);
}
