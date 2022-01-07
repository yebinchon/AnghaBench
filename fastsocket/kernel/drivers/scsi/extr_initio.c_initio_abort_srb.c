
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_ctrl_blk {int flags; scalar_t__ tagmsg; size_t target; struct scsi_ctrl_blk* next; int (* post ) (int *,int *) ;void* hastat; struct scsi_cmnd* srb; } ;
struct scsi_cmnd {int dummy; } ;
struct initio_host {scalar_t__ semaph; int semaph_lock; struct scsi_ctrl_blk* last_busy; struct scsi_ctrl_blk* first_busy; int * act_tags; struct scsi_ctrl_blk* active; struct scsi_ctrl_blk* last_pending; struct scsi_ctrl_blk* first_pending; scalar_t__ addr; } ;


 void* HOST_ABORTED ;
 int SCF_DONE ;
 int SCF_POST ;
 int SCSI_ABORT_BUSY ;
 int SCSI_ABORT_NOT_RUNNING ;
 int SCSI_ABORT_SNOOZE ;
 int SCSI_ABORT_SUCCESS ;
 scalar_t__ TUL_Mask ;
 int outb (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int *,int *) ;
 int stub2 (int *,int *) ;
 int tulip_main (struct initio_host*) ;

__attribute__((used)) static int initio_abort_srb(struct initio_host * host, struct scsi_cmnd *srbp)
{
 unsigned long flags;
 struct scsi_ctrl_blk *tmp, *prev;

 spin_lock_irqsave(&host->semaph_lock, flags);

 if ((host->semaph == 0) && (host->active == ((void*)0))) {

  outb(0x1F, host->addr + TUL_Mask);
  spin_unlock_irqrestore(&host->semaph_lock, flags);

  tulip_main(host);
  spin_lock_irqsave(&host->semaph_lock, flags);
  host->semaph = 1;
  outb(0x0F, host->addr + TUL_Mask);
  spin_unlock_irqrestore(&host->semaph_lock, flags);
  return SCSI_ABORT_SNOOZE;
 }
 prev = tmp = host->first_pending;
 while (tmp != ((void*)0)) {

  if (tmp->srb == srbp) {
   if (tmp == host->active) {
    spin_unlock_irqrestore(&host->semaph_lock, flags);
    return SCSI_ABORT_BUSY;
   } else if (tmp == host->first_pending) {
    if ((host->first_pending = tmp->next) == ((void*)0))
     host->last_pending = ((void*)0);
   } else {
    prev->next = tmp->next;
    if (tmp == host->last_pending)
     host->last_pending = prev;
   }
   tmp->hastat = HOST_ABORTED;
   tmp->flags |= SCF_DONE;
   if (tmp->flags & SCF_POST)
    (*tmp->post) ((u8 *) host, (u8 *) tmp);
   spin_unlock_irqrestore(&host->semaph_lock, flags);
   return SCSI_ABORT_SUCCESS;
  }
  prev = tmp;
  tmp = tmp->next;
 }

 prev = tmp = host->first_busy;
 while (tmp != ((void*)0)) {
  if (tmp->srb == srbp) {
   if (tmp == host->active) {
    spin_unlock_irqrestore(&host->semaph_lock, flags);
    return SCSI_ABORT_BUSY;
   } else if (tmp->tagmsg == 0) {
    spin_unlock_irqrestore(&host->semaph_lock, flags);
    return SCSI_ABORT_BUSY;
   } else {
    host->act_tags[tmp->target]--;
    if (tmp == host->first_busy) {
     if ((host->first_busy = tmp->next) == ((void*)0))
      host->last_busy = ((void*)0);
    } else {
     prev->next = tmp->next;
     if (tmp == host->last_busy)
      host->last_busy = prev;
    }
    tmp->next = ((void*)0);


    tmp->hastat = HOST_ABORTED;
    tmp->flags |= SCF_DONE;
    if (tmp->flags & SCF_POST)
     (*tmp->post) ((u8 *) host, (u8 *) tmp);
    spin_unlock_irqrestore(&host->semaph_lock, flags);
    return SCSI_ABORT_SUCCESS;
   }
  }
  prev = tmp;
  tmp = tmp->next;
 }
 spin_unlock_irqrestore(&host->semaph_lock, flags);
 return SCSI_ABORT_NOT_RUNNING;
}
