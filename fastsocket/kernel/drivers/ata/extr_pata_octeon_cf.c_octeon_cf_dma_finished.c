
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


struct TYPE_10__ {int done; } ;
union cvmx_mio_boot_dma_intx {scalar_t__ u64; TYPE_4__ s; } ;
struct TYPE_9__ {int size; } ;
union cvmx_mio_boot_dma_cfgx {scalar_t__ u64; TYPE_3__ s; } ;
typedef int u8 ;
struct octeon_cf_port {int dummy; } ;
struct octeon_cf_data {int dma_engine; } ;
struct TYPE_12__ {scalar_t__ protocol; } ;
struct ata_queued_cmd {TYPE_6__ tf; int err_mask; } ;
struct ata_eh_info {int dummy; } ;
struct TYPE_7__ {struct ata_eh_info eh_info; } ;
struct ata_port {scalar_t__ hsm_task_state; TYPE_5__* ops; struct octeon_cf_port* private_data; int print_id; TYPE_2__* dev; TYPE_1__ link; } ;
struct TYPE_11__ {int (* sff_check_status ) (struct ata_port*) ;} ;
struct TYPE_8__ {struct octeon_cf_data* platform_data; } ;


 int AC_ERR_HOST_BUS ;
 scalar_t__ ATA_PROT_DMA ;
 int CVMX_MIO_BOOT_DMA_CFGX (int ) ;
 int CVMX_MIO_BOOT_DMA_INTX (int ) ;
 int CVMX_MIO_BOOT_DMA_INT_ENX (int ) ;
 scalar_t__ HSM_ST_ERR ;
 scalar_t__ HSM_ST_LAST ;
 int VPRINTK (char*,int ,scalar_t__,scalar_t__) ;
 int ata_ehi_push_desc (struct ata_eh_info*,char*,int ) ;
 int ata_sff_hsm_move (struct ata_port*,struct ata_queued_cmd*,int ,int ) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;
 int stub1 (struct ata_port*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static unsigned int octeon_cf_dma_finished(struct ata_port *ap,
     struct ata_queued_cmd *qc)
{
 struct ata_eh_info *ehi = &ap->link.eh_info;
 struct octeon_cf_data *ocd = ap->dev->platform_data;
 union cvmx_mio_boot_dma_cfgx dma_cfg;
 union cvmx_mio_boot_dma_intx dma_int;
 struct octeon_cf_port *cf_port;
 u8 status;

 VPRINTK("ata%u: protocol %d task_state %d\n",
  ap->print_id, qc->tf.protocol, ap->hsm_task_state);


 if (ap->hsm_task_state != HSM_ST_LAST)
  return 0;

 cf_port = ap->private_data;

 dma_cfg.u64 = cvmx_read_csr(CVMX_MIO_BOOT_DMA_CFGX(ocd->dma_engine));
 if (dma_cfg.s.size != 0xfffff) {

  qc->err_mask |= AC_ERR_HOST_BUS;
  ap->hsm_task_state = HSM_ST_ERR;
 }


 dma_cfg.u64 = 0;
 dma_cfg.s.size = -1;
 cvmx_write_csr(CVMX_MIO_BOOT_DMA_CFGX(ocd->dma_engine), dma_cfg.u64);


 dma_int.u64 = 0;
 cvmx_write_csr(CVMX_MIO_BOOT_DMA_INT_ENX(ocd->dma_engine), dma_int.u64);


 dma_int.s.done = 1;
 cvmx_write_csr(CVMX_MIO_BOOT_DMA_INTX(ocd->dma_engine), dma_int.u64);

 status = ap->ops->sff_check_status(ap);

 ata_sff_hsm_move(ap, qc, status, 0);

 if (unlikely(qc->err_mask) && (qc->tf.protocol == ATA_PROT_DMA))
  ata_ehi_push_desc(ehi, "DMA stat 0x%x", status);

 return 1;
}
