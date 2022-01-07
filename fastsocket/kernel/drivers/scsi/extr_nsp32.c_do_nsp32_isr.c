
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* Status; } ;
struct scsi_cmnd {int result; TYPE_1__ SCp; } ;
struct Scsi_Host {int host_lock; } ;
struct TYPE_8__ {unsigned int BaseAddress; int msgout_len; struct scsi_cmnd* CurrentSC; struct Scsi_Host* Host; } ;
typedef TYPE_2__ nsp32_hw_data ;
typedef int irqreturn_t ;


 unsigned short AUTOSCSI_BUSY ;
 int BM_CNT ;
 unsigned char BUSMON_PHASE_MASK ;




 unsigned short BUS_FREE_OCCUER ;
 unsigned short COMMAND_PHASE ;
 unsigned short DATA_IN_PHASE ;
 unsigned short DATA_OUT_PHASE ;
 int DID_BAD_TARGET ;
 int DID_RESET ;
 int DID_TIME_OUT ;
 int FIFO_REST_CNT ;
 unsigned short FIFO_REST_MASK ;
 unsigned short ILLEGAL_PHASE ;
 unsigned short IRQSTATUS_ANY_IRQ ;
 unsigned short IRQSTATUS_AUTOSCSI_IRQ ;
 unsigned short IRQSTATUS_BMCNTERR_IRQ ;
 unsigned short IRQSTATUS_FIFO_SHLD_IRQ ;
 unsigned short IRQSTATUS_PCI_IRQ ;
 unsigned short IRQSTATUS_PHASE_CHANGE_IRQ ;
 unsigned short IRQSTATUS_SCSIRESET_IRQ ;
 unsigned short IRQSTATUS_TIMER_IRQ ;
 int IRQ_CONTROL ;
 int IRQ_CONTROL_ALL_IRQ_MASK ;
 int IRQ_RETVAL (int) ;
 int IRQ_STATUS ;
 int KERN_ERR ;
 int KERN_INFO ;
 int KERN_WARNING ;
 unsigned short MSGOUT_PHASE ;
 unsigned short MSG_IN_OCCUER ;
 unsigned short MSG_OUT_OCCUER ;
 int NEGATE ;
 int NSP32_DEBUG_INTR ;
 int SACK_CNT ;
 int SAVED_SACK_CNT ;
 int SCSI_BUS_MONITOR ;
 int SCSI_CSB_IN ;
 int SCSI_EXECUTE_PHASE ;
 unsigned short SELECTION_TIMEOUT ;
 int SGT_ADR ;
 unsigned short STATUS_PHASE ;
 int TIMER_SET ;
 int TIMER_STOP ;
 int TRANSFER_STATUS ;
 int TRUE ;
 int nsp32_busfree_occur (struct scsi_cmnd*,unsigned short) ;
 int nsp32_dbg (int ,char*,...) ;
 int nsp32_do_bus_reset (TYPE_2__*) ;
 int nsp32_msg (int ,char*,...) ;
 int nsp32_msgin_occur (struct scsi_cmnd*,unsigned short,unsigned short) ;
 int nsp32_msgout_occur (struct scsi_cmnd*) ;
 void* nsp32_read1 (unsigned int,int ) ;
 unsigned short nsp32_read2 (unsigned int,int ) ;
 int nsp32_read4 (unsigned int,int ) ;
 int nsp32_sack_assert (TYPE_2__*) ;
 int nsp32_sack_negate (TYPE_2__*) ;
 int nsp32_scsi_done (struct scsi_cmnd*) ;
 int nsp32_wait_req (TYPE_2__*,int ) ;
 int nsp32_write2 (unsigned int,int ,int ) ;
 int printk (char*) ;
 scalar_t__ scsi_get_resid (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;
 int show_autophase (unsigned short) ;
 int show_busphase (unsigned char) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static irqreturn_t do_nsp32_isr(int irq, void *dev_id)
{
 nsp32_hw_data *data = dev_id;
 unsigned int base = data->BaseAddress;
 struct scsi_cmnd *SCpnt = data->CurrentSC;
 unsigned short auto_stat, irq_stat, trans_stat;
 unsigned char busmon, busphase;
 unsigned long flags;
 int ret;
 int handled = 0;
 struct Scsi_Host *host = data->Host;

 spin_lock_irqsave(host->host_lock, flags);




 irq_stat = nsp32_read2(base, IRQ_STATUS);
 nsp32_dbg(NSP32_DEBUG_INTR,
    "enter IRQ: %d, IRQstatus: 0x%x", irq, irq_stat);

 if ((irq_stat & IRQSTATUS_ANY_IRQ) == 0) {
  nsp32_dbg(NSP32_DEBUG_INTR, "shared interrupt: irq other 0x%x", irq_stat);
  goto out2;
 }
 handled = 1;
 nsp32_write2(base, IRQ_CONTROL, IRQ_CONTROL_ALL_IRQ_MASK);

 busmon = nsp32_read1(base, SCSI_BUS_MONITOR);
 busphase = busmon & BUSMON_PHASE_MASK;

 trans_stat = nsp32_read2(base, TRANSFER_STATUS);
 if ((irq_stat == 0xffff) && (trans_stat == 0xffff)) {
  nsp32_msg(KERN_INFO, "card disconnect");
  if (data->CurrentSC != ((void*)0)) {
   nsp32_msg(KERN_INFO, "clean up current SCSI command");
   SCpnt->result = DID_BAD_TARGET << 16;
   nsp32_scsi_done(SCpnt);
  }
  goto out;
 }


 if (irq_stat & IRQSTATUS_TIMER_IRQ) {
  nsp32_dbg(NSP32_DEBUG_INTR, "timer stop");
  nsp32_write2(base, TIMER_SET, TIMER_STOP);
  goto out;
 }


 if (irq_stat & IRQSTATUS_SCSIRESET_IRQ) {
  nsp32_msg(KERN_INFO, "detected someone do bus reset");
  nsp32_do_bus_reset(data);
  if (SCpnt != ((void*)0)) {
   SCpnt->result = DID_RESET << 16;
   nsp32_scsi_done(SCpnt);
  }
  goto out;
 }

 if (SCpnt == ((void*)0)) {
  nsp32_msg(KERN_WARNING, "SCpnt==NULL this can't be happened");
  nsp32_msg(KERN_WARNING, "irq_stat=0x%x trans_stat=0x%x", irq_stat, trans_stat);
  goto out;
 }







 if(irq_stat & IRQSTATUS_AUTOSCSI_IRQ) {

  auto_stat = nsp32_read2(base, SCSI_EXECUTE_PHASE);
  nsp32_write2(base, SCSI_EXECUTE_PHASE, 0);


  if (auto_stat & SELECTION_TIMEOUT) {
   nsp32_dbg(NSP32_DEBUG_INTR,
      "selection timeout occurred");

   SCpnt->result = DID_TIME_OUT << 16;
   nsp32_scsi_done(SCpnt);
   goto out;
  }

  if (auto_stat & MSGOUT_PHASE) {







   if (!(auto_stat & MSG_IN_OCCUER) &&
        (data->msgout_len <= 3)) {




    data->msgout_len = 0;
   };

   nsp32_dbg(NSP32_DEBUG_INTR, "MsgOut phase processed");
  }

  if ((auto_stat & DATA_IN_PHASE) &&
      (scsi_get_resid(SCpnt) > 0) &&
      ((nsp32_read2(base, FIFO_REST_CNT) & FIFO_REST_MASK) != 0)) {
   printk( "auto+fifo\n");

  }

  if (auto_stat & (DATA_IN_PHASE | DATA_OUT_PHASE)) {

   nsp32_dbg(NSP32_DEBUG_INTR,
      "Data in/out phase processed");


   nsp32_dbg(NSP32_DEBUG_INTR, "BMCNT=0x%lx",
        nsp32_read4(base, BM_CNT));
   nsp32_dbg(NSP32_DEBUG_INTR, "addr=0x%lx",
        nsp32_read4(base, SGT_ADR));
   nsp32_dbg(NSP32_DEBUG_INTR, "SACK=0x%lx",
        nsp32_read4(base, SACK_CNT));
   nsp32_dbg(NSP32_DEBUG_INTR, "SSACK=0x%lx",
        nsp32_read4(base, SAVED_SACK_CNT));

   scsi_set_resid(SCpnt, 0);
  }




  if (auto_stat & MSG_IN_OCCUER) {
   nsp32_msgin_occur(SCpnt, irq_stat, auto_stat);
  }




  if (auto_stat & MSG_OUT_OCCUER) {
   nsp32_msgout_occur(SCpnt);
  }




  if (auto_stat & BUS_FREE_OCCUER) {
   ret = nsp32_busfree_occur(SCpnt, auto_stat);
   if (ret == TRUE) {
    goto out;
   }
  }

  if (auto_stat & STATUS_PHASE) {







   SCpnt->result = (int)nsp32_read1(base, SCSI_CSB_IN);
  }

  if (auto_stat & ILLEGAL_PHASE) {

   nsp32_msg(KERN_WARNING,
      "AUTO SCSI ILLEGAL PHASE OCCUR!!!!");






   nsp32_sack_assert(data);
   nsp32_wait_req(data, NEGATE);
   nsp32_sack_negate(data);

  }

  if (auto_stat & COMMAND_PHASE) {

   nsp32_dbg(NSP32_DEBUG_INTR, "Command phase processed");
  }

  if (auto_stat & AUTOSCSI_BUSY) {

  }

  show_autophase(auto_stat);
 }


 if (irq_stat & IRQSTATUS_FIFO_SHLD_IRQ) {
  nsp32_dbg(NSP32_DEBUG_INTR, "FIFO IRQ");

  switch(busphase) {
  case 130:
   nsp32_dbg(NSP32_DEBUG_INTR, "fifo/write");



   break;

  case 131:
   nsp32_dbg(NSP32_DEBUG_INTR, "fifo/read");



   break;

  case 128:
   nsp32_dbg(NSP32_DEBUG_INTR, "fifo/status");

   SCpnt->SCp.Status = nsp32_read1(base, SCSI_CSB_IN);

   break;
  default:
   nsp32_dbg(NSP32_DEBUG_INTR, "fifo/other phase");
   nsp32_dbg(NSP32_DEBUG_INTR, "irq_stat=0x%x trans_stat=0x%x", irq_stat, trans_stat);
   show_busphase(busphase);
   break;
  }

  goto out;
 }


 if (irq_stat & IRQSTATUS_PHASE_CHANGE_IRQ) {
  nsp32_dbg(NSP32_DEBUG_INTR, "phase change IRQ");

  switch(busphase) {
  case 129:
   nsp32_dbg(NSP32_DEBUG_INTR, "phase chg/msg in");
   nsp32_msgin_occur(SCpnt, irq_stat, 0);
   break;
  default:
   nsp32_msg(KERN_WARNING, "phase chg/other phase?");
   nsp32_msg(KERN_WARNING, "irq_stat=0x%x trans_stat=0x%x\n",
      irq_stat, trans_stat);
   show_busphase(busphase);
   break;
  }
  goto out;
 }


 if (irq_stat & IRQSTATUS_PCI_IRQ) {
  nsp32_dbg(NSP32_DEBUG_INTR, "PCI IRQ occurred");

 }


 if (irq_stat & IRQSTATUS_BMCNTERR_IRQ) {
  nsp32_msg(KERN_ERR, "Received unexpected BMCNTERR IRQ! ");





 }







 out:

 nsp32_write2(base, IRQ_CONTROL, 0);

 out2:
 spin_unlock_irqrestore(host->host_lock, flags);

 nsp32_dbg(NSP32_DEBUG_INTR, "exit");

 return IRQ_RETVAL(handled);
}
