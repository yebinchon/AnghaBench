
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ata_port {scalar_t__ port_no; TYPE_2__* host; } ;
struct ata_device {scalar_t__ devno; TYPE_1__* link; } ;
struct ata_acpi_gtm {int flags; TYPE_3__* drive; } ;
typedef int acpi_str ;
struct TYPE_6__ {int dma; } ;
struct TYPE_5__ {scalar_t__ private_data; } ;
struct TYPE_4__ {struct ata_port* ap; } ;


 unsigned long ATA_MASK_MWDMA ;
 unsigned long ATA_MASK_PIO ;
 unsigned long ATA_MASK_UDMA ;
 int ATA_MWDMA2 ;
 int ATA_PIO4 ;







 int KERN_DEBUG ;
 unsigned long ata_acpi_gtm_xfermask (struct ata_device*,struct ata_acpi_gtm const*) ;
 struct ata_acpi_gtm* ata_acpi_init_gtm (struct ata_port*) ;
 unsigned long ata_pack_xfermask (int ,int ,unsigned int const) ;
 int ata_port_printk (struct ata_port*,int ,char*,unsigned long,unsigned long,unsigned long,unsigned long,int,unsigned long,char*) ;
 int snprintf (char*,int,char*,int,int,int) ;

__attribute__((used)) static unsigned long nv_mode_filter(struct ata_device *dev,
        unsigned long xfer_mask)
{
 static const unsigned int udma_mask_map[] =
  { 132, 133, 134, 0,
    131, 130, 129, 128 };
 struct ata_port *ap = dev->link->ap;
 char acpi_str[32] = "";
 u32 saved_udma, udma;
 const struct ata_acpi_gtm *gtm;
 unsigned long bios_limit = 0, acpi_limit = 0, limit;


 udma = saved_udma = (unsigned long)ap->host->private_data;

 if (ap->port_no == 0)
  udma >>= 16;
 if (dev->devno == 0)
  udma >>= 8;

 if ((udma & 0xc0) == 0xc0)
  bios_limit = ata_pack_xfermask(0, 0, udma_mask_map[udma & 0x7]);


 gtm = ata_acpi_init_gtm(ap);
 if (gtm) {
  acpi_limit = ata_acpi_gtm_xfermask(dev, gtm);

  snprintf(acpi_str, sizeof(acpi_str), " (%u:%u:0x%x)",
    gtm->drive[0].dma, gtm->drive[1].dma, gtm->flags);
 }


 limit = bios_limit | acpi_limit;




 if (!(limit & ATA_MASK_PIO))
  limit |= ATA_MASK_PIO;
 if (!(limit & (ATA_MASK_MWDMA | ATA_MASK_UDMA)))
  limit |= ATA_MASK_MWDMA | ATA_MASK_UDMA;


 limit |= ata_pack_xfermask(ATA_PIO4, ATA_MWDMA2, 132);

 ata_port_printk(ap, KERN_DEBUG, "nv_mode_filter: 0x%lx&0x%lx->0x%lx, "
   "BIOS=0x%lx (0x%x) ACPI=0x%lx%s\n",
   xfer_mask, limit, xfer_mask & limit, bios_limit,
   saved_udma, acpi_limit, acpi_str);

 return xfer_mask & limit;
}
