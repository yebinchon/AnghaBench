
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dma_rcv_ctx {int task; int ctrlClear; scalar_t__ ctrlSet; } ;
struct dma_trm_ctx {int task; int ctrlClear; scalar_t__ ctrlSet; } ;
struct ti_ohci {int nb_iso_xmit_ctx; int nb_iso_rcv_ctx; int event_lock; struct dma_rcv_ctx ar_resp_context; struct dma_rcv_ctx ar_req_context; struct dma_trm_ctx at_resp_context; struct dma_trm_ctx at_req_context; struct hpsb_host* host; scalar_t__ check_busreset; } ;
struct hpsb_host {scalar_t__ in_bus_reset; } ;
typedef int quadlet_t ;
typedef int irqreturn_t ;


 int DBGMSG (char*,...) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int LONG_RESET ;
 scalar_t__ OHCI1394_AsReqRcvCommandPtr ;
 scalar_t__ OHCI1394_AsReqRcvContextControlSet ;
 scalar_t__ OHCI1394_AsReqTrCommandPtr ;
 scalar_t__ OHCI1394_AsReqTrContextControlSet ;
 scalar_t__ OHCI1394_AsRspRcvCommandPtr ;
 scalar_t__ OHCI1394_AsRspRcvContextControlSet ;
 scalar_t__ OHCI1394_AsRspTrCommandPtr ;
 scalar_t__ OHCI1394_AsRspTrContextControlSet ;
 scalar_t__ OHCI1394_IntEventClear ;
 scalar_t__ OHCI1394_IntEventSet ;
 scalar_t__ OHCI1394_IntMaskClear ;
 scalar_t__ OHCI1394_IntMaskSet ;
 scalar_t__ OHCI1394_IsoRcvCommandPtr ;
 scalar_t__ OHCI1394_IsoRcvContextControlSet ;
 scalar_t__ OHCI1394_IsoRcvContextMatch ;
 scalar_t__ OHCI1394_IsoRecvIntEventClear ;
 scalar_t__ OHCI1394_IsoRecvIntEventSet ;
 scalar_t__ OHCI1394_IsoXmitCommandPtr ;
 scalar_t__ OHCI1394_IsoXmitContextControlSet ;
 scalar_t__ OHCI1394_IsoXmitIntEventClear ;
 scalar_t__ OHCI1394_IsoXmitIntEventSet ;
 scalar_t__ OHCI1394_LinkControlSet ;
 int OHCI1394_LinkControl_CycleMaster ;
 scalar_t__ OHCI1394_NodeID ;
 scalar_t__ OHCI1394_PhyReqFilterHiSet ;
 scalar_t__ OHCI1394_PhyReqFilterLoSet ;
 int OHCI1394_RQPkt ;
 int OHCI1394_RSPkt ;
 int OHCI1394_busReset ;
 int OHCI1394_cycleInconsistent ;
 int OHCI1394_cycleTooLong ;
 int OHCI1394_isochRx ;
 int OHCI1394_isochTx ;
 int OHCI1394_postedWriteErr ;
 int OHCI1394_reqTxComplete ;
 int OHCI1394_respTxComplete ;
 int OHCI1394_selfIDComplete ;
 int OHCI1394_unrecoverableError ;
 int PRINT (int ,char*,...) ;
 int RESET_BUS ;
 int dma_trm_tasklet (unsigned long) ;
 int handle_selfid (struct ti_ohci*,struct hpsb_host*,int,int) ;
 int hpsb_bus_reset (struct hpsb_host*) ;
 int hpsb_selfid_complete (struct hpsb_host*,int,int) ;
 int ohci1394_stop_context (struct ti_ohci*,int ,char*) ;
 int ohci_devctl (struct hpsb_host*,int ,int ) ;
 int ohci_schedule_iso_tasklets (struct ti_ohci*,int,int) ;
 scalar_t__ phys_dma ;
 scalar_t__ printk_ratelimit () ;
 int reg_read (struct ti_ohci*,scalar_t__) ;
 int reg_write (struct ti_ohci*,scalar_t__,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;
 int udelay (int) ;

__attribute__((used)) static irqreturn_t ohci_irq_handler(int irq, void *dev_id)
{
 quadlet_t event, node_id;
 struct ti_ohci *ohci = (struct ti_ohci *)dev_id;
 struct hpsb_host *host = ohci->host;
 int phyid = -1, isroot = 0;
 unsigned long flags;




 spin_lock_irqsave(&ohci->event_lock, flags);
 event = reg_read(ohci, OHCI1394_IntEventClear);
 reg_write(ohci, OHCI1394_IntEventClear, event & ~OHCI1394_busReset);
 spin_unlock_irqrestore(&ohci->event_lock, flags);

 if (!event)
  return IRQ_NONE;




 if (event == ~(u32) 0) {
  DBGMSG("Device removed.");
  return IRQ_NONE;
 }

 DBGMSG("IntEvent: %08x", event);

 if (event & OHCI1394_unrecoverableError) {
  int ctx;
  PRINT(KERN_ERR, "Unrecoverable error!");

  if (reg_read(ohci, OHCI1394_AsReqTrContextControlSet) & 0x800)
   PRINT(KERN_ERR, "Async Req Tx Context died: "
    "ctrl[%08x] cmdptr[%08x]",
    reg_read(ohci, OHCI1394_AsReqTrContextControlSet),
    reg_read(ohci, OHCI1394_AsReqTrCommandPtr));

  if (reg_read(ohci, OHCI1394_AsRspTrContextControlSet) & 0x800)
   PRINT(KERN_ERR, "Async Rsp Tx Context died: "
    "ctrl[%08x] cmdptr[%08x]",
    reg_read(ohci, OHCI1394_AsRspTrContextControlSet),
    reg_read(ohci, OHCI1394_AsRspTrCommandPtr));

  if (reg_read(ohci, OHCI1394_AsReqRcvContextControlSet) & 0x800)
   PRINT(KERN_ERR, "Async Req Rcv Context died: "
    "ctrl[%08x] cmdptr[%08x]",
    reg_read(ohci, OHCI1394_AsReqRcvContextControlSet),
    reg_read(ohci, OHCI1394_AsReqRcvCommandPtr));

  if (reg_read(ohci, OHCI1394_AsRspRcvContextControlSet) & 0x800)
   PRINT(KERN_ERR, "Async Rsp Rcv Context died: "
    "ctrl[%08x] cmdptr[%08x]",
    reg_read(ohci, OHCI1394_AsRspRcvContextControlSet),
    reg_read(ohci, OHCI1394_AsRspRcvCommandPtr));

  for (ctx = 0; ctx < ohci->nb_iso_xmit_ctx; ctx++) {
   if (reg_read(ohci, OHCI1394_IsoXmitContextControlSet + (16 * ctx)) & 0x800)
    PRINT(KERN_ERR, "Iso Xmit %d Context died: "
     "ctrl[%08x] cmdptr[%08x]", ctx,
     reg_read(ohci, OHCI1394_IsoXmitContextControlSet + (16 * ctx)),
     reg_read(ohci, OHCI1394_IsoXmitCommandPtr + (16 * ctx)));
  }

  for (ctx = 0; ctx < ohci->nb_iso_rcv_ctx; ctx++) {
   if (reg_read(ohci, OHCI1394_IsoRcvContextControlSet + (32 * ctx)) & 0x800)
    PRINT(KERN_ERR, "Iso Recv %d Context died: "
     "ctrl[%08x] cmdptr[%08x] match[%08x]", ctx,
     reg_read(ohci, OHCI1394_IsoRcvContextControlSet + (32 * ctx)),
     reg_read(ohci, OHCI1394_IsoRcvCommandPtr + (32 * ctx)),
     reg_read(ohci, OHCI1394_IsoRcvContextMatch + (32 * ctx)));
  }

  event &= ~OHCI1394_unrecoverableError;
 }
 if (event & OHCI1394_postedWriteErr) {
  PRINT(KERN_ERR, "physical posted write error");

  event &= ~OHCI1394_postedWriteErr;
 }
 if (event & OHCI1394_cycleTooLong) {
  if(printk_ratelimit())
   PRINT(KERN_WARNING, "isochronous cycle too long");
  else
   DBGMSG("OHCI1394_cycleTooLong");
  reg_write(ohci, OHCI1394_LinkControlSet,
     OHCI1394_LinkControl_CycleMaster);
  event &= ~OHCI1394_cycleTooLong;
 }
 if (event & OHCI1394_cycleInconsistent) {



  DBGMSG("OHCI1394_cycleInconsistent");
  event &= ~OHCI1394_cycleInconsistent;
 }
 if (event & OHCI1394_busReset) {



  spin_lock_irqsave(&ohci->event_lock, flags);
  reg_write(ohci, OHCI1394_IntMaskClear, OHCI1394_busReset);

  if (ohci->check_busreset) {
   int loop_count = 0;

   udelay(10);

   while (reg_read(ohci, OHCI1394_IntEventSet) & OHCI1394_busReset) {
    reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);

    spin_unlock_irqrestore(&ohci->event_lock, flags);
    udelay(10);
    spin_lock_irqsave(&ohci->event_lock, flags);







    if (loop_count > 10000) {
     ohci_devctl(host, RESET_BUS, LONG_RESET);
     DBGMSG("Detected bus-reset loop. Forced a bus reset!");
     loop_count = 0;
    }

    loop_count++;
   }
  }
  spin_unlock_irqrestore(&ohci->event_lock, flags);
  if (!host->in_bus_reset) {
   DBGMSG("irq_handler: Bus reset requested");


   hpsb_bus_reset(ohci->host);
  }
  event &= ~OHCI1394_busReset;
 }
 if (event & OHCI1394_reqTxComplete) {
  struct dma_trm_ctx *d = &ohci->at_req_context;
  DBGMSG("Got reqTxComplete interrupt "
         "status=0x%08X", reg_read(ohci, d->ctrlSet));
  if (reg_read(ohci, d->ctrlSet) & 0x800)
   ohci1394_stop_context(ohci, d->ctrlClear,
           "reqTxComplete");
  else
   dma_trm_tasklet((unsigned long)d);

  event &= ~OHCI1394_reqTxComplete;
 }
 if (event & OHCI1394_respTxComplete) {
  struct dma_trm_ctx *d = &ohci->at_resp_context;
  DBGMSG("Got respTxComplete interrupt "
         "status=0x%08X", reg_read(ohci, d->ctrlSet));
  if (reg_read(ohci, d->ctrlSet) & 0x800)
   ohci1394_stop_context(ohci, d->ctrlClear,
           "respTxComplete");
  else
   tasklet_schedule(&d->task);
  event &= ~OHCI1394_respTxComplete;
 }
 if (event & OHCI1394_RQPkt) {
  struct dma_rcv_ctx *d = &ohci->ar_req_context;
  DBGMSG("Got RQPkt interrupt status=0x%08X",
         reg_read(ohci, d->ctrlSet));
  if (reg_read(ohci, d->ctrlSet) & 0x800)
   ohci1394_stop_context(ohci, d->ctrlClear, "RQPkt");
  else
   tasklet_schedule(&d->task);
  event &= ~OHCI1394_RQPkt;
 }
 if (event & OHCI1394_RSPkt) {
  struct dma_rcv_ctx *d = &ohci->ar_resp_context;
  DBGMSG("Got RSPkt interrupt status=0x%08X",
         reg_read(ohci, d->ctrlSet));
  if (reg_read(ohci, d->ctrlSet) & 0x800)
   ohci1394_stop_context(ohci, d->ctrlClear, "RSPkt");
  else
   tasklet_schedule(&d->task);
  event &= ~OHCI1394_RSPkt;
 }
 if (event & OHCI1394_isochRx) {
  quadlet_t rx_event;

  rx_event = reg_read(ohci, OHCI1394_IsoRecvIntEventSet);
  reg_write(ohci, OHCI1394_IsoRecvIntEventClear, rx_event);
  ohci_schedule_iso_tasklets(ohci, rx_event, 0);
  event &= ~OHCI1394_isochRx;
 }
 if (event & OHCI1394_isochTx) {
  quadlet_t tx_event;

  tx_event = reg_read(ohci, OHCI1394_IsoXmitIntEventSet);
  reg_write(ohci, OHCI1394_IsoXmitIntEventClear, tx_event);
  ohci_schedule_iso_tasklets(ohci, 0, tx_event);
  event &= ~OHCI1394_isochTx;
 }
 if (event & OHCI1394_selfIDComplete) {
  if (host->in_bus_reset) {
   node_id = reg_read(ohci, OHCI1394_NodeID);

   if (!(node_id & 0x80000000)) {
    PRINT(KERN_ERR,
          "SelfID received, but NodeID invalid "
          "(probably new bus reset occurred): %08X",
          node_id);
    goto selfid_not_valid;
   }

   phyid = node_id & 0x0000003f;
   isroot = (node_id & 0x40000000) != 0;

   DBGMSG("SelfID interrupt received "
         "(phyid %d, %s)", phyid,
         (isroot ? "root" : "not root"));

   handle_selfid(ohci, host, phyid, isroot);



   spin_lock_irqsave(&ohci->event_lock, flags);
   reg_write(ohci, OHCI1394_IntEventClear, OHCI1394_busReset);
   reg_write(ohci, OHCI1394_IntMaskSet, OHCI1394_busReset);
   spin_unlock_irqrestore(&ohci->event_lock, flags);





   if (phys_dma) {
    reg_write(ohci, OHCI1394_PhyReqFilterHiSet,
       0xffffffff);
    reg_write(ohci, OHCI1394_PhyReqFilterLoSet,
       0xffffffff);
   }

   DBGMSG("PhyReqFilter=%08x%08x",
          reg_read(ohci, OHCI1394_PhyReqFilterHiSet),
          reg_read(ohci, OHCI1394_PhyReqFilterLoSet));

   hpsb_selfid_complete(host, phyid, isroot);
  } else
   PRINT(KERN_ERR,
         "SelfID received outside of bus reset sequence");

selfid_not_valid:
  event &= ~OHCI1394_selfIDComplete;
 }



 if (event)
  PRINT(KERN_ERR, "Unhandled interrupt(s) 0x%08x",
        event);

 return IRQ_HANDLED;
}
