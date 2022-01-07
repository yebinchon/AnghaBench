
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int UDIDETCR0 ;
 int UDIDETCR1 ;



 int const XFER_SW_DMA_0 ;






 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int program_cycle_times (TYPE_2__*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cmd64x_set_dma_mode(ide_drive_t *drive, const u8 speed)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u8 unit = drive->dn & 0x01;
 u8 regU = 0, pciU = hwif->channel ? UDIDETCR1 : UDIDETCR0;

 if (speed >= XFER_SW_DMA_0) {
  (void) pci_read_config_byte(dev, pciU, &regU);
  regU &= ~(unit ? 0xCA : 0x35);
 }

 switch(speed) {
 case 128:
  regU |= unit ? 0x0A : 0x05;
  break;
 case 129:
  regU |= unit ? 0x4A : 0x15;
  break;
 case 130:
  regU |= unit ? 0x8A : 0x25;
  break;
 case 131:
  regU |= unit ? 0x42 : 0x11;
  break;
 case 132:
  regU |= unit ? 0x82 : 0x21;
  break;
 case 133:
  regU |= unit ? 0xC2 : 0x31;
  break;
 case 134:
  program_cycle_times(drive, 120, 70);
  break;
 case 135:
  program_cycle_times(drive, 150, 80);
  break;
 case 136:
  program_cycle_times(drive, 480, 215);
  break;
 }

 if (speed >= XFER_SW_DMA_0)
  (void) pci_write_config_byte(dev, pciU, regU);
}
