
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int it8213_cable_detect(struct ata_port *ap)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u8 tmp;
 pci_read_config_byte(pdev, 0x42, &tmp);
 if (tmp & 2)
  return ATA_CBL_PATA40;
 return ATA_CBL_PATA80;
}
