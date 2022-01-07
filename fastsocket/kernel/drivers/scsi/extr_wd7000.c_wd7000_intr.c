
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int unchar ;
struct TYPE_12__ {scalar_t__ phase; } ;
struct scsi_cmnd {int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_2__ SCp; } ;
typedef int irqreturn_t ;
struct TYPE_11__ {TYPE_5__* icmb; } ;
struct TYPE_17__ {TYPE_3__* sh; scalar_t__ iobase; int int_counter; TYPE_1__ mb; } ;
struct TYPE_16__ {int status; scalar_t__ phase; } ;
struct TYPE_15__ {int status; scalar_t__ scbptr; } ;
struct TYPE_14__ {int op; int vue; int status; struct scsi_cmnd* SCpnt; } ;
struct TYPE_13__ {int host_lock; } ;
typedef TYPE_4__ Scb ;
typedef TYPE_5__ Mailbox ;
typedef TYPE_6__ IcbAny ;
typedef TYPE_7__ Adapter ;


 scalar_t__ ASC_INTR_STAT ;
 scalar_t__ ASC_STAT ;
 int ICB_OP_MASK ;
 int IMB_INTR ;
 int INT_IM ;
 int IRQ_HANDLED ;
 int MB_INTR ;
 int MB_MASK ;
 int dprintk (char*,...) ;
 int free_scb (TYPE_4__*) ;
 int inb (scalar_t__) ;
 TYPE_4__* isa_bus_to_virt (int ) ;
 int make_code (int,int) ;
 int scsi2int (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct scsi_cmnd*) ;
 int wd7000_intr_ack (TYPE_7__*) ;

__attribute__((used)) static irqreturn_t wd7000_intr(int irq, void *dev_id)
{
 Adapter *host = (Adapter *) dev_id;
 int flag, icmb, errstatus, icmb_status;
 int host_error, scsi_error;
 Scb *scb;
 IcbAny *icb;
 struct scsi_cmnd *SCpnt;
 Mailbox *icmbs = host->mb.icmb;
 unsigned long flags;

 spin_lock_irqsave(host->sh->host_lock, flags);
 host->int_counter++;

 dprintk("wd7000_intr: irq = %d, host = 0x%06lx\n", irq, (long) host);

 flag = inb(host->iobase + ASC_INTR_STAT);

 dprintk("wd7000_intr: intr stat = 0x%02x\n", flag);

 if (!(inb(host->iobase + ASC_STAT) & INT_IM)) {
  dprintk("wd7000_intr: phantom interrupt...\n");
  goto ack;
 }

 if (!(flag & MB_INTR))
  goto ack;


 if (!(flag & IMB_INTR)) {
  dprintk("wd7000_intr: free outgoing mailbox\n");





  goto ack;
 }


 icmb = flag & MB_MASK;
 icmb_status = icmbs[icmb].status;
 if (icmb_status & 0x80) {
  dprintk("wd7000_intr: unsolicited interrupt 0x%02x\n", icmb_status);
  goto ack;
 }


 scb = isa_bus_to_virt(scsi2int((unchar *) icmbs[icmb].scbptr));
 icmbs[icmb].status = 0;
 if (scb->op & ICB_OP_MASK) {
  icb = (IcbAny *) scb;
  icb->status = icmb_status;
  icb->phase = 0;
  goto ack;
 }

 SCpnt = scb->SCpnt;
 if (--(SCpnt->SCp.phase) <= 0) {
  host_error = scb->vue | (icmb_status << 8);
  scsi_error = scb->status;
  errstatus = make_code(host_error, scsi_error);
  SCpnt->result = errstatus;

  free_scb(scb);

  SCpnt->scsi_done(SCpnt);
 }

 ack:
 dprintk("wd7000_intr: return from interrupt handler\n");
 wd7000_intr_ack(host);

 spin_unlock_irqrestore(host->sh->host_lock, flags);
 return IRQ_HANDLED;
}
