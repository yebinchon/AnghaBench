
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {struct scsi_ctrl_blk* next; int status; } ;
struct initio_host {struct scsi_ctrl_blk* last_pending; struct scsi_ctrl_blk* first_pending; } ;


 int SCB_PEND ;
 int printk (char*,struct scsi_ctrl_blk*) ;

__attribute__((used)) static void initio_append_pend_scb(struct initio_host * host, struct scsi_ctrl_blk * scbp)
{




 scbp->status = SCB_PEND;
 scbp->next = ((void*)0);
 if (host->last_pending != ((void*)0)) {
  host->last_pending->next = scbp;
  host->last_pending = scbp;
 } else {
  host->first_pending = scbp;
  host->last_pending = scbp;
 }
}
