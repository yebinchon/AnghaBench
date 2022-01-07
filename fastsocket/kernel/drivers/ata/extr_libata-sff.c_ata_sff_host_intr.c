
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_8__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {int err_mask; TYPE_3__ tf; TYPE_2__* dev; } ;
struct TYPE_9__ {int idle_irq; } ;
struct ata_eh_info {int dummy; } ;
struct TYPE_6__ {struct ata_eh_info eh_info; } ;
struct ata_port {int hsm_task_state; TYPE_5__* ops; TYPE_4__ stats; int print_id; TYPE_1__ link; } ;
struct TYPE_10__ {int (* bmdma_status ) (struct ata_port*) ;int (* sff_irq_clear ) (struct ata_port*) ;int (* sff_check_status ) (struct ata_port*) ;int (* bmdma_stop ) (struct ata_queued_cmd*) ;} ;
struct TYPE_7__ {int flags; } ;


 int AC_ERR_HOST_BUS ;
 scalar_t__ ATAPI_PROT_DMA ;
 int ATA_BUSY ;
 int ATA_DFLAG_CDB_INTR ;
 int ATA_DMA_ERR ;
 int ATA_DMA_INTR ;
 scalar_t__ ATA_PROT_DMA ;

 int HSM_ST_ERR ;


 int KERN_WARNING ;
 int VPRINTK (char*,int ,int,...) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*,int) ;
 int ata_port_printk (struct ata_port*,int ,char*) ;
 int ata_sff_hsm_move (struct ata_port*,struct ata_queued_cmd*,int,int ) ;
 int ata_sff_irq_status (struct ata_port*) ;
 int stub1 (struct ata_port*) ;
 int stub2 (struct ata_queued_cmd*) ;
 int stub3 (struct ata_port*) ;
 int stub4 (struct ata_port*) ;
 int stub5 (struct ata_port*) ;
 scalar_t__ unlikely (int) ;

unsigned int ata_sff_host_intr(struct ata_port *ap,
          struct ata_queued_cmd *qc)
{
 struct ata_eh_info *ehi = &ap->link.eh_info;
 u8 status, host_stat = 0;

 VPRINTK("ata%u: protocol %d task_state %d\n",
  ap->print_id, qc->tf.protocol, ap->hsm_task_state);


 switch (ap->hsm_task_state) {
 case 129:
  if (!(qc->dev->flags & ATA_DFLAG_CDB_INTR))
   goto idle_irq;
  break;
 case 128:
  if (qc->tf.protocol == ATA_PROT_DMA ||
      qc->tf.protocol == ATAPI_PROT_DMA) {

   host_stat = ap->ops->bmdma_status(ap);
   VPRINTK("ata%u: host_stat 0x%X\n",
    ap->print_id, host_stat);


   if (!(host_stat & ATA_DMA_INTR))
    goto idle_irq;


   ap->ops->bmdma_stop(qc);

   if (unlikely(host_stat & ATA_DMA_ERR)) {

    qc->err_mask |= AC_ERR_HOST_BUS;
    ap->hsm_task_state = HSM_ST_ERR;
   }
  }
  break;
 case 130:
  break;
 default:
  goto idle_irq;
 }



 status = ata_sff_irq_status(ap);
 if (status & ATA_BUSY)
  goto idle_irq;


 ap->ops->sff_irq_clear(ap);

 ata_sff_hsm_move(ap, qc, status, 0);

 if (unlikely(qc->err_mask) && (qc->tf.protocol == ATA_PROT_DMA ||
           qc->tf.protocol == ATAPI_PROT_DMA))
  ata_ehi_push_desc(ehi, "BMDMA stat 0x%x", host_stat);

 return 1;

idle_irq:
 ap->stats.idle_irq++;
 return 0;
}
