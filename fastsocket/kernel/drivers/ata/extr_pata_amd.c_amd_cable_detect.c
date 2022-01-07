
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int const u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct ata_port {size_t port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int pci_read_config_byte (struct pci_dev*,int,int const*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int amd_cable_detect(struct ata_port *ap)
{
 static const u32 bitmask[2] = {0x03, 0x0C};
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u8 ata66;

 pci_read_config_byte(pdev, 0x42, &ata66);
 if (ata66 & bitmask[ap->port_no])
  return ATA_CBL_PATA80;
 return ATA_CBL_PATA40;
}
