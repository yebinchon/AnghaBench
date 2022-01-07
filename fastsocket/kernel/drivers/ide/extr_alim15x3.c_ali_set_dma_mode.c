
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ const XFER_UDMA_0 ;
 scalar_t__ const XFER_UDMA_3 ;
 scalar_t__ const XFER_UDMA_6 ;
 int pci_read_config_byte (struct pci_dev*,int,scalar_t__*) ;
 int pci_write_config_byte (struct pci_dev*,int,scalar_t__) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ali_set_dma_mode(ide_drive_t *drive, const u8 speed)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u8 speed1 = speed;
 u8 unit = drive->dn & 1;
 u8 tmpbyte = 0x00;
 int m5229_udma = (hwif->channel) ? 0x57 : 0x56;

 if (speed == XFER_UDMA_6)
  speed1 = 0x47;

 if (speed < XFER_UDMA_0) {
  u8 ultra_enable = (unit) ? 0x7f : 0xf7;



  pci_read_config_byte(dev, m5229_udma, &tmpbyte);
  tmpbyte &= ultra_enable;
  pci_write_config_byte(dev, m5229_udma, tmpbyte);




 } else {
  pci_read_config_byte(dev, m5229_udma, &tmpbyte);
  tmpbyte &= (0x0f << ((1-unit) << 2));



  tmpbyte |= ((0x08 | ((4-speed1)&0x07)) << (unit << 2));
  pci_write_config_byte(dev, m5229_udma, tmpbyte);
  if (speed >= XFER_UDMA_3) {
   pci_read_config_byte(dev, 0x4b, &tmpbyte);
   tmpbyte |= 1;
   pci_write_config_byte(dev, 0x4b, tmpbyte);
  }
 }
}
