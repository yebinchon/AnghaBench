
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int select_data; scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int ide_dma_end (TYPE_2__*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int hpt374_dma_end(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u8 mcr = 0, mcr_addr = hwif->select_data;
 u8 bwsr = 0, mask = hwif->channel ? 0x02 : 0x01;

 pci_read_config_byte(dev, 0x6a, &bwsr);
 pci_read_config_byte(dev, mcr_addr, &mcr);
 if (bwsr & mask)
  pci_write_config_byte(dev, mcr_addr, mcr | 0x30);
 return ide_dma_end(drive);
}
