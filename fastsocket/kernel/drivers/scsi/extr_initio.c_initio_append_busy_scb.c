
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_ctrl_blk {size_t target; struct scsi_ctrl_blk* next; int status; scalar_t__ tagmsg; } ;
struct initio_host {struct scsi_ctrl_blk* last_busy; struct scsi_ctrl_blk* first_busy; TYPE_1__* targets; int * act_tags; } ;
struct TYPE_2__ {int flags; } ;


 int SCB_BUSY ;
 int TCF_BUSY ;
 int printk (char*,struct scsi_ctrl_blk*) ;

__attribute__((used)) static void initio_append_busy_scb(struct initio_host * host, struct scsi_ctrl_blk * scbp)
{




 if (scbp->tagmsg)
  host->act_tags[scbp->target]++;
 else
  host->targets[scbp->target].flags |= TCF_BUSY;
 scbp->status = SCB_BUSY;
 scbp->next = ((void*)0);
 if (host->last_busy != ((void*)0)) {
  host->last_busy->next = scbp;
  host->last_busy = scbp;
 } else {
  host->first_busy = scbp;
  host->last_busy = scbp;
 }
}
