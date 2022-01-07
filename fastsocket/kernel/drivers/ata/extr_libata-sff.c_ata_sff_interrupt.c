
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
struct ata_queued_cmd {int flags; TYPE_2__ tf; } ;
struct TYPE_3__ {int active_tag; } ;
struct ata_port {TYPE_1__ link; } ;
struct ata_host {unsigned int n_ports; int lock; struct ata_port** ports; } ;
typedef int irqreturn_t ;


 int ATA_QCFLAG_ACTIVE ;
 int ATA_TFLAG_POLLING ;
 int IRQ_RETVAL (unsigned int) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 unsigned int ata_sff_host_intr (struct ata_port*,struct ata_queued_cmd*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

irqreturn_t ata_sff_interrupt(int irq, void *dev_instance)
{
 struct ata_host *host = dev_instance;
 unsigned int i;
 unsigned int handled = 0;
 unsigned long flags;


 spin_lock_irqsave(&host->lock, flags);

 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];
  struct ata_queued_cmd *qc;

  qc = ata_qc_from_tag(ap, ap->link.active_tag);
  if (qc && (!(qc->tf.flags & ATA_TFLAG_POLLING)) &&
      (qc->flags & ATA_QCFLAG_ACTIVE))
   handled |= ata_sff_host_intr(ap, qc);
 }

 spin_unlock_irqrestore(&host->lock, flags);

 return IRQ_RETVAL(handled);
}
