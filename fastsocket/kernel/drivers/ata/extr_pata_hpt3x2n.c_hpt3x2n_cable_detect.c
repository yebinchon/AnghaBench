
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct TYPE_2__ {int dev; } ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA80 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int hpt3x2n_cable_detect(struct ata_port *ap)
{
 u8 scr2, ata66;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);

 pci_read_config_byte(pdev, 0x5B, &scr2);
 pci_write_config_byte(pdev, 0x5B, scr2 & ~0x01);

 pci_read_config_byte(pdev, 0x5A, &ata66);

 pci_write_config_byte(pdev, 0x5B, scr2);

 if (ata66 & (1 << ap->port_no))
  return ATA_CBL_PATA40;
 else
  return ATA_CBL_PATA80;
}
