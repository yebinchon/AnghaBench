
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct via_isa_bridge {int flags; } ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; struct via_isa_bridge* private_data; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA40_SHORT ;
 int ATA_CBL_PATA80 ;
 int ATA_CBL_PATA_UNK ;
 int ATA_CBL_SATA ;
 int VIA_SATA_PATA ;
 int VIA_UDMA ;
 int VIA_UDMA_100 ;
 int VIA_UDMA_66 ;
 scalar_t__ ata_acpi_cbl_80wire (struct ata_port*,scalar_t__) ;
 scalar_t__ ata_acpi_init_gtm (struct ata_port*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;
 scalar_t__ via_cable_override (struct pci_dev*) ;

__attribute__((used)) static int via_cable_detect(struct ata_port *ap) {
 const struct via_isa_bridge *config = ap->host->private_data;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u32 ata66;

 if (via_cable_override(pdev))
  return ATA_CBL_PATA40_SHORT;

 if ((config->flags & VIA_SATA_PATA) && ap->port_no == 0)
  return ATA_CBL_SATA;


 if ((config->flags & VIA_UDMA) < VIA_UDMA_66)
  return ATA_CBL_PATA40;

 else if ((config->flags & VIA_UDMA) < VIA_UDMA_100)
  return ATA_CBL_PATA_UNK;

 pci_read_config_dword(pdev, 0x50, &ata66);


 if (ata66 & (0x10100000 >> (16 * ap->port_no)))
  return ATA_CBL_PATA80;

 if (ata_acpi_init_gtm(ap) &&
     ata_acpi_cbl_80wire(ap, ata_acpi_init_gtm(ap)))
  return ATA_CBL_PATA80;
 return ATA_CBL_PATA40;
}
