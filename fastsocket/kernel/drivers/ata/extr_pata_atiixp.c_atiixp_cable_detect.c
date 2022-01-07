
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 scalar_t__ ATIIXP_IDE_UDMA_MODE ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int atiixp_cable_detect(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u8 udma;



 pci_read_config_byte(pdev, ATIIXP_IDE_UDMA_MODE + ap->port_no, &udma);
 if ((udma & 0x07) >= 0x04 || (udma & 0x70) >= 0x40)
  return ATA_CBL_PATA80;
 return ATA_CBL_PATA40;
}
