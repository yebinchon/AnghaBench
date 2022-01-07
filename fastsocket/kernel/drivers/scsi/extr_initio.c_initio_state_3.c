
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_control {int flags; } ;
struct scsi_ctrl_blk {int* cdb; int next_state; scalar_t__ cdblen; } ;
struct initio_host {int phase; scalar_t__ addr; struct target_control* active_tc; struct scsi_ctrl_blk* active; } ;



 int MAX_OFFSET ;
 int MSG_EXTEND ;

 int MSG_NOP ;


 int TCF_NO_SYNC_NEGO ;
 size_t TCF_SCSI_RATE ;
 int TCF_SYNC_DONE ;
 int TSC_FLUSH_FIFO ;
 int TSC_SET_ACK ;
 int TSC_XF_FIFO_OUT ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SCtrl0 ;
 scalar_t__ TUL_SFifo ;
 scalar_t__ TUL_SSignal ;
 int inb (scalar_t__) ;
 int initio_bad_seq (struct initio_host*) ;
 int initio_msgin (struct initio_host*) ;
 int* initio_rate_tbl ;
 int initio_status_msg (struct initio_host*) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;
 int wait_tulip (struct initio_host*) ;

__attribute__((used)) static int initio_state_3(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb = host->active;
 struct target_control *active_tc = host->active_tc;
 int i;




 for (;;) {
  switch (host->phase) {
  case 131:
   for (i = 0; i < (int) scb->cdblen; i++)
    outb(scb->cdb[i], host->addr + TUL_SFifo);
   outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
   if (wait_tulip(host) == -1)
    return -1;
   if (host->phase == 131)
    return initio_bad_seq(host);
   return 4;

  case 130:
   scb->next_state = 3;
   if (initio_msgin(host) == -1)
    return -1;
   break;

  case 128:
   if (initio_status_msg(host) == -1)
    return -1;
   break;

  case 129:
   if (active_tc->flags & (TCF_SYNC_DONE | TCF_NO_SYNC_NEGO)) {
    outb(MSG_NOP, host->addr + TUL_SFifo);
    outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
    if (wait_tulip(host) == -1)
     return -1;
   } else {
    active_tc->flags |= TCF_SYNC_DONE;

    outb(MSG_EXTEND, host->addr + TUL_SFifo);
    outb(3, host->addr + TUL_SFifo);
    outb(1, host->addr + TUL_SFifo);
    outb(initio_rate_tbl[active_tc->flags & TCF_SCSI_RATE], host->addr + TUL_SFifo);
    outb(MAX_OFFSET, host->addr + TUL_SFifo);
    outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
    if (wait_tulip(host) == -1)
     return -1;
    outb(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
    outb(inb(host->addr + TUL_SSignal) & (TSC_SET_ACK | 7), host->addr + TUL_SSignal);

   }
   break;
  default:
   return initio_bad_seq(host);
  }
 }
}
