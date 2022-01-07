
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ class; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ATA_DEV_ATA ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sis_set_fifo(struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u8 fifoctrl;
 u8 mask = 0x11;

 mask <<= (2 * ap->port_no);
 mask <<= adev->devno;


 pci_read_config_byte(pdev, 0x4B, &fifoctrl);
 fifoctrl &= ~mask;


 if (adev->class == ATA_DEV_ATA)
  fifoctrl |= mask;
 pci_write_config_byte(pdev, 0x4B, fifoctrl);
}
