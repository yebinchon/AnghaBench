
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; } ;
struct TYPE_4__ {int recovery; int assert; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ XFER_PIO_0 ;
 TYPE_2__* cs5520_pio_clocks ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cs5520_set_timings(struct ata_port *ap, struct ata_device *adev, int pio)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int slave = adev->devno;

 pio -= XFER_PIO_0;


 pci_write_config_byte(pdev, 0x62 + ap->port_no,
    (cs5520_pio_clocks[pio].recovery << 4) |
    (cs5520_pio_clocks[pio].assert));


 pci_write_config_byte(pdev, 0x64 + 4*ap->port_no + slave,
    (cs5520_pio_clocks[pio].recovery << 4) |
    (cs5520_pio_clocks[pio].assert));

 pci_write_config_byte(pdev, 0x66 + 4*ap->port_no + slave,
    (cs5520_pio_clocks[pio].recovery << 4) |
    (cs5520_pio_clocks[pio].assert));
}
