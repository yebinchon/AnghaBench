
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {unsigned int pio_mode; int devno; scalar_t__ class; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ATA_DEV_ATA ;
 unsigned int XFER_PIO_0 ;
 scalar_t__ ata_pio_need_iordy (struct ata_device*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,unsigned int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,unsigned int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void rdc_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 unsigned int pio = adev->pio_mode - XFER_PIO_0;
 struct pci_dev *dev = to_pci_dev(ap->host->dev);
 unsigned int is_slave = (adev->devno != 0);
 unsigned int master_port= ap->port_no ? 0x42 : 0x40;
 unsigned int slave_port = 0x44;
 u16 master_data;
 u8 slave_data;
 u8 udma_enable;
 int control = 0;

 static const
 u8 timings[][2] = { { 0, 0 },
       { 0, 0 },
       { 1, 0 },
       { 2, 1 },
       { 2, 3 }, };

 if (pio >= 2)
  control |= 1;
 if (ata_pio_need_iordy(adev))
  control |= 2;

 if (adev->class == ATA_DEV_ATA)
  control |= 4;





 pci_read_config_word(dev, master_port, &master_data);
 if (is_slave) {

  master_data &= 0xff0f;

  master_data |= 0x4000;

  master_data |= (control << 4);
  pci_read_config_byte(dev, slave_port, &slave_data);
  slave_data &= (ap->port_no ? 0x0f : 0xf0);

  slave_data |= ((timings[pio][0] << 2) | timings[pio][1])
      << (ap->port_no ? 4 : 0);
 } else {

  master_data &= 0xccf0;

  master_data |= control;

  master_data |=
   (timings[pio][0] << 12) |
   (timings[pio][1] << 8);
 }
 pci_write_config_word(dev, master_port, master_data);
 if (is_slave)
  pci_write_config_byte(dev, slave_port, slave_data);




 pci_read_config_byte(dev, 0x48, &udma_enable);
 udma_enable &= ~(1 << (2 * ap->port_no + adev->devno));
 pci_write_config_byte(dev, 0x48, udma_enable);
}
