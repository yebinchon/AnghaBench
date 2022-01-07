
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {struct scsi_ctrl_blk* next; int status; } ;
struct initio_host {struct scsi_ctrl_blk* last_done; struct scsi_ctrl_blk* first_done; } ;


 int SCB_DONE ;
 int printk (char*,struct scsi_ctrl_blk*) ;

__attribute__((used)) static void initio_append_done_scb(struct initio_host * host, struct scsi_ctrl_blk * scbp)
{




 scbp->status = SCB_DONE;
 scbp->next = ((void*)0);
 if (host->last_done != ((void*)0)) {
  host->last_done->next = scbp;
  host->last_done = scbp;
 } else {
  host->first_done = scbp;
  host->last_done = scbp;
 }
}
