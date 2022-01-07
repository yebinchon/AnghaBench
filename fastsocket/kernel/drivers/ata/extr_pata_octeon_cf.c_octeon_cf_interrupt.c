
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int done; } ;
union cvmx_mio_boot_dma_intx {void* u64; TYPE_6__ s; } ;
struct TYPE_10__ {int en; } ;
union cvmx_mio_boot_dma_cfgx {TYPE_4__ s; void* u64; } ;
typedef int u8 ;
struct octeon_cf_port {int dma_finished; int delayed_finish; int wq; } ;
struct octeon_cf_data {int dma_engine; } ;
struct TYPE_9__ {int flags; } ;
struct ata_queued_cmd {int cursg; TYPE_3__ tf; } ;
struct TYPE_11__ {int altstatus_addr; } ;
struct TYPE_8__ {int active_tag; } ;
struct ata_port {TYPE_5__ ioaddr; TYPE_2__ link; struct octeon_cf_port* private_data; TYPE_1__* dev; } ;
struct ata_host {int n_ports; int lock; struct ata_port** ports; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {struct octeon_cf_data* platform_data; } ;


 int ATA_BUSY ;
 int ATA_DRQ ;
 int ATA_TFLAG_POLLING ;
 int CVMX_MIO_BOOT_DMA_CFGX (int ) ;
 int CVMX_MIO_BOOT_DMA_INTX (int ) ;
 int DPRINTK (char*) ;
 int IRQ_RETVAL (unsigned int) ;
 struct ata_queued_cmd* ata_qc_from_tag (struct ata_port*,int ) ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;
 int ioread8 (int ) ;
 unsigned int octeon_cf_dma_finished (struct ata_port*,struct ata_queued_cmd*) ;
 int octeon_cf_dma_start (struct ata_queued_cmd*) ;
 int queue_delayed_work (int ,int *,int) ;
 int sg_is_last (int ) ;
 int sg_next (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t octeon_cf_interrupt(int irq, void *dev_instance)
{
 struct ata_host *host = dev_instance;
 struct octeon_cf_port *cf_port;
 int i;
 unsigned int handled = 0;
 unsigned long flags;

 spin_lock_irqsave(&host->lock, flags);

 DPRINTK("ENTER\n");
 for (i = 0; i < host->n_ports; i++) {
  u8 status;
  struct ata_port *ap;
  struct ata_queued_cmd *qc;
  union cvmx_mio_boot_dma_intx dma_int;
  union cvmx_mio_boot_dma_cfgx dma_cfg;
  struct octeon_cf_data *ocd;

  ap = host->ports[i];
  ocd = ap->dev->platform_data;

  ocd = ap->dev->platform_data;
  cf_port = ap->private_data;
  dma_int.u64 =
   cvmx_read_csr(CVMX_MIO_BOOT_DMA_INTX(ocd->dma_engine));
  dma_cfg.u64 =
   cvmx_read_csr(CVMX_MIO_BOOT_DMA_CFGX(ocd->dma_engine));

  qc = ata_qc_from_tag(ap, ap->link.active_tag);

  if (qc && !(qc->tf.flags & ATA_TFLAG_POLLING)) {
   if (dma_int.s.done && !dma_cfg.s.en) {
    if (!sg_is_last(qc->cursg)) {
     qc->cursg = sg_next(qc->cursg);
     handled = 1;
     octeon_cf_dma_start(qc);
     continue;
    } else {
     cf_port->dma_finished = 1;
    }
   }
   if (!cf_port->dma_finished)
    continue;
   status = ioread8(ap->ioaddr.altstatus_addr);
   if (status & (ATA_BUSY | ATA_DRQ)) {
    dma_int.u64 = 0;
    dma_int.s.done = 1;
    cvmx_write_csr(CVMX_MIO_BOOT_DMA_INTX(ocd->dma_engine),
            dma_int.u64);

    queue_delayed_work(cf_port->wq,
         &cf_port->delayed_finish, 1);
    handled = 1;
   } else {
    handled |= octeon_cf_dma_finished(ap, qc);
   }
  }
 }
 spin_unlock_irqrestore(&host->lock, flags);
 DPRINTK("EXIT\n");
 return IRQ_RETVAL(handled);
}
