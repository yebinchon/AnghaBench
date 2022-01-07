
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scsi_ctrl_blk {int lun; int target; struct scsi_ctrl_blk* next; } ;
struct initio_host {struct scsi_ctrl_blk* first_busy; } ;


 int printk (char*,struct scsi_ctrl_blk*) ;

struct scsi_ctrl_blk *initio_find_busy_scb(struct initio_host * host, u16 tarlun)
{
 struct scsi_ctrl_blk *tmp, *prev;
 u16 scbp_tarlun;


 prev = tmp = host->first_busy;
 while (tmp != ((void*)0)) {
  scbp_tarlun = (tmp->lun << 8) | (tmp->target);
  if (scbp_tarlun == tarlun) {
   break;
  }
  prev = tmp;
  tmp = tmp->next;
 }



 return tmp;
}
