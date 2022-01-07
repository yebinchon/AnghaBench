
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {int flags; scalar_t__ err_mask; TYPE_1__ tf; } ;
struct TYPE_8__ {int active_tag; } ;
struct TYPE_6__ {int ctl_addr; scalar_t__ bmdma_addr; } ;
struct ata_port {TYPE_3__* ops; TYPE_4__ link; TYPE_2__ ioaddr; int lock; } ;
typedef int * ata_reset_fn_t ;
struct TYPE_7__ {int (* bmdma_status ) (struct ata_port*) ;int postreset; int prereset; int (* drain_fifo ) (struct ata_queued_cmd*) ;int (* sff_irq_clear ) (struct ata_port*) ;int (* sff_check_status ) (struct ata_port*) ;int (* bmdma_stop ) (struct ata_queued_cmd*) ;int * hardreset; int * softreset; } ;


 scalar_t__ AC_ERR_HOST_BUS ;
 scalar_t__ AC_ERR_TIMEOUT ;
 scalar_t__ ATAPI_PROT_DMA ;
 int ATA_DMA_ERR ;
 scalar_t__ ATA_PROT_DMA ;
 int ATA_QCFLAG_FAILED ;
 struct ata_queued_cmd* __ata_qc_from_tag (struct ata_port*,int ) ;
 int ata_do_eh (struct ata_port*,int ,int *,int *,int ) ;
 int ata_eh_thaw_port (struct ata_port*) ;
 scalar_t__ ata_is_builtin_hardreset (int *) ;
 int * ata_sff_softreset ;
 int ata_sff_sync (struct ata_port*) ;
 int sata_scr_valid (TYPE_4__*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_queued_cmd*) ;
 int stub3 (struct ata_port*) ;
 int stub4 (struct ata_port*) ;
 int stub5 (struct ata_queued_cmd*) ;

void ata_sff_error_handler(struct ata_port *ap)
{
 ata_reset_fn_t softreset = ap->ops->softreset;
 ata_reset_fn_t hardreset = ap->ops->hardreset;
 struct ata_queued_cmd *qc;
 unsigned long flags;
 int thaw = 0;

 qc = __ata_qc_from_tag(ap, ap->link.active_tag);
 if (qc && !(qc->flags & ATA_QCFLAG_FAILED))
  qc = ((void*)0);


 spin_lock_irqsave(ap->lock, flags);

 if (ap->ioaddr.bmdma_addr &&
     qc && (qc->tf.protocol == ATA_PROT_DMA ||
     qc->tf.protocol == ATAPI_PROT_DMA)) {
  u8 host_stat;

  host_stat = ap->ops->bmdma_status(ap);






  if (qc->err_mask == AC_ERR_TIMEOUT
      && (host_stat & ATA_DMA_ERR)) {
   qc->err_mask = AC_ERR_HOST_BUS;
   thaw = 1;
  }

  ap->ops->bmdma_stop(qc);
 }

 ata_sff_sync(ap);
 ap->ops->sff_check_status(ap);
 ap->ops->sff_irq_clear(ap);





 if (ap->ops->drain_fifo)
  ap->ops->drain_fifo(qc);

 spin_unlock_irqrestore(ap->lock, flags);

 if (thaw)
  ata_eh_thaw_port(ap);






 if (softreset == ata_sff_softreset && !ap->ioaddr.ctl_addr)
  softreset = ((void*)0);
 if (ata_is_builtin_hardreset(hardreset) && !sata_scr_valid(&ap->link))
  hardreset = ((void*)0);

 ata_do_eh(ap, ap->ops->prereset, softreset, hardreset,
    ap->ops->postreset);
}
