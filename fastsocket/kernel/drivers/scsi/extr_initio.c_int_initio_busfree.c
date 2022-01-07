
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {int status; int hastat; } ;
struct initio_host {scalar_t__ addr; int * active_tc; struct scsi_ctrl_blk* active; } ;


 int HOST_BUS_FREE ;
 int HOST_SEL_TOUT ;
 int SCB_SELECT ;
 int TSC_FLUSH_FIFO ;
 int TSC_HW_RESELECT ;
 int TSC_INITDEFAULT ;
 scalar_t__ TUL_SConfig ;
 scalar_t__ TUL_SCtrl0 ;
 scalar_t__ TUL_SCtrl1 ;
 int initio_append_done_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 int initio_unlink_busy_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 int initio_unlink_pend_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 int outb (int ,scalar_t__) ;

int int_initio_busfree(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb = host->active;

 if (scb != ((void*)0)) {
  if (scb->status & SCB_SELECT) {
   initio_unlink_pend_scb(host, scb);
   scb->hastat = HOST_SEL_TOUT;
   initio_append_done_scb(host, scb);
  } else {
   initio_unlink_busy_scb(host, scb);
   scb->hastat = HOST_BUS_FREE;
   initio_append_done_scb(host, scb);
  }
  host->active = ((void*)0);
  host->active_tc = ((void*)0);
 }
 outb(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
 outb(TSC_INITDEFAULT, host->addr + TUL_SConfig);
 outb(TSC_HW_RESELECT, host->addr + TUL_SCtrl1);
 return -1;
}
