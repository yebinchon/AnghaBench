
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {struct scsi_ctrl_blk* next; } ;
struct initio_host {int * last_done; struct scsi_ctrl_blk* first_done; } ;


 int printk (char*,struct scsi_ctrl_blk*) ;

struct scsi_ctrl_blk *initio_find_done_scb(struct initio_host * host)
{
 struct scsi_ctrl_blk *tmp;

 if ((tmp = host->first_done) != ((void*)0)) {
  if ((host->first_done = tmp->next) == ((void*)0))
   host->last_done = ((void*)0);
  tmp->next = ((void*)0);
 }



 return tmp;
}
