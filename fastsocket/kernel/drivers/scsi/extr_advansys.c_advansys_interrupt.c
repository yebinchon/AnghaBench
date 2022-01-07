
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int adv_dvc_var; int asc_dvc_var; } ;
struct asc_board {TYPE_1__ dvc_var; } ;
struct Scsi_Host {int host_lock; int io_port; } ;
typedef int irqreturn_t ;


 int ASC_DBG (int,char*,...) ;
 scalar_t__ ASC_NARROW_BOARD (struct asc_board*) ;
 int ASC_STATS (struct Scsi_Host*,int ) ;
 scalar_t__ AdvISR (int *) ;
 int AscISR (int *) ;
 scalar_t__ AscIsIntPending (int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int interrupt ;
 struct asc_board* shost_priv (struct Scsi_Host*) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static irqreturn_t advansys_interrupt(int irq, void *dev_id)
{
 struct Scsi_Host *shost = dev_id;
 struct asc_board *boardp = shost_priv(shost);
 irqreturn_t result = IRQ_NONE;

 ASC_DBG(2, "boardp 0x%p\n", boardp);
 spin_lock(shost->host_lock);
 if (ASC_NARROW_BOARD(boardp)) {
  if (AscIsIntPending(shost->io_port)) {
   result = IRQ_HANDLED;
   ASC_STATS(shost, interrupt);
   ASC_DBG(1, "before AscISR()\n");
   AscISR(&boardp->dvc_var.asc_dvc_var);
  }
 } else {
  ASC_DBG(1, "before AdvISR()\n");
  if (AdvISR(&boardp->dvc_var.adv_dvc_var)) {
   result = IRQ_HANDLED;
   ASC_STATS(shost, interrupt);
  }
 }
 spin_unlock(shost->host_lock);

 ASC_DBG(1, "end\n");
 return result;
}
