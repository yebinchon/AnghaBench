
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {size_t pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 int PATA_PIO_TIMING ;
 size_t XFER_PIO_0 ;
 int pci_write_config_byte (struct pci_dev*,int ,int const) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void vt6421_set_pio_mode(struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 static const u8 pio_bits[] = { 0xA8, 0x65, 0x65, 0x31, 0x20 };
 pci_write_config_byte(pdev, PATA_PIO_TIMING, pio_bits[adev->pio_mode - XFER_PIO_0]);
}
