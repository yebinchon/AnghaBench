
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {scalar_t__ port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ XFER_PIO_0 ;
 int artop6260_load_piomode (struct ata_port*,struct ata_device*,scalar_t__) ;
 int pci_read_config_byte (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_byte (struct pci_dev*,scalar_t__,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void artop6260_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u8 ultra;

 artop6260_load_piomode(ap, adev, adev->pio_mode - XFER_PIO_0);


 pci_read_config_byte(pdev, 0x44 + ap->port_no, &ultra);
 ultra &= ~(7 << (4 * adev->devno));
 pci_write_config_byte(pdev, 0x44 + ap->port_no, ultra);
}
