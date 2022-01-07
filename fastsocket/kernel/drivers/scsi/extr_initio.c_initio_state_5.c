
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef unsigned long u16 ;
struct sg_entry {int len; int data; } ;
struct scsi_ctrl_blk {int buflen; int flags; size_t sgidx; unsigned long sgmax; int bufptr; scalar_t__ sglen; struct sg_entry* sglist; int hastat; } ;
struct initio_host {int jsstatus0; scalar_t__ phase; scalar_t__ addr; TYPE_1__* active_tc; struct scsi_ctrl_blk* active; } ;
struct TYPE_2__ {int js_period; } ;


 scalar_t__ DATA_OUT ;
 int HOST_DO_DU ;
 int SCF_SG ;
 int TAX_X_ABT ;
 int TSC_FLUSH_FIFO ;
 int TSC_WIDE_SCSI ;
 int TSC_XF_FIFO_OUT ;
 int TSS_PAR_ERROR ;
 int TSS_XFER_CMP ;
 scalar_t__ TUL_Int ;
 scalar_t__ TUL_SCmd ;
 scalar_t__ TUL_SCnt0 ;
 scalar_t__ TUL_SCtrl0 ;
 scalar_t__ TUL_SFifoCnt ;
 scalar_t__ TUL_SStatus1 ;
 scalar_t__ TUL_XCmd ;
 scalar_t__ TUL_XCtrl ;
 scalar_t__ TUL_XStatus ;
 int XABT ;
 int XPEND ;
 int cpu_relax () ;
 int inb (scalar_t__) ;
 int inl (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int printk (char*) ;
 int wait_tulip (struct initio_host*) ;

__attribute__((used)) static int initio_state_5(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb = host->active;
 long cnt, xcnt;





 cnt = inl(host->addr + TUL_SCnt0) & 0x0FFFFFF;

 if (inb(host->addr + TUL_XCmd) & 0x20) {


  if (host->jsstatus0 & TSS_PAR_ERROR)
   scb->hastat = HOST_DO_DU;
  if (inb(host->addr + TUL_XStatus) & XPEND) {

   outb(inb(host->addr + TUL_XCtrl) | 0x80, host->addr + TUL_XCtrl);

   while (inb(host->addr + TUL_XStatus) & XPEND)
    cpu_relax();
  }
 } else {

  if ((inb(host->addr + TUL_SStatus1) & TSS_XFER_CMP) == 0) {
   if (host->active_tc->js_period & TSC_WIDE_SCSI)
    cnt += (inb(host->addr + TUL_SFifoCnt) & 0x1F) << 1;
   else
    cnt += (inb(host->addr + TUL_SFifoCnt) & 0x1F);
  }
  if (inb(host->addr + TUL_XStatus) & XPEND) {
   outb(TAX_X_ABT, host->addr + TUL_XCmd);

   while ((inb(host->addr + TUL_Int) & XABT) == 0)
    cpu_relax();
  }
  if ((cnt == 1) && (host->phase == DATA_OUT)) {
   outb(TSC_XF_FIFO_OUT, host->addr + TUL_SCmd);
   if (wait_tulip(host) == -1)
    return -1;
   cnt = 0;
  } else {
   if ((inb(host->addr + TUL_SStatus1) & TSS_XFER_CMP) == 0)
    outb(TSC_FLUSH_FIFO, host->addr + TUL_SCtrl0);
  }
 }
 if (cnt == 0) {
  scb->buflen = 0;
  return 6;
 }

 xcnt = (long) scb->buflen - cnt;
 scb->buflen = (u32) cnt;
 if (scb->flags & SCF_SG) {
  struct sg_entry *sgp;
  unsigned long i;

  sgp = &scb->sglist[scb->sgidx];
  for (i = scb->sgidx; i < scb->sgmax; sgp++, i++) {
   xcnt -= (long) sgp->len;
   if (xcnt < 0) {
    xcnt += (long) sgp->len;
    sgp->data += (u32) xcnt;
    sgp->len -= (u32) xcnt;
    scb->bufptr += ((u32) (i - scb->sgidx) << 3);

    scb->sglen = (u8) (scb->sgmax - i);

    scb->sgidx = (u16) i;

    return 4;
   }

  }
  return 6;
 } else {
  scb->bufptr += (u32) xcnt;
 }
 return 4;
}
