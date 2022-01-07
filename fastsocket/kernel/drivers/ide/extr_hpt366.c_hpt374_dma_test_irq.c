
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ dma_base; scalar_t__ select_data; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int ATA_DMA_INTR ;
 scalar_t__ ATA_DMA_STATUS ;
 int inb (scalar_t__) ;
 int pci_read_config_word (struct pci_dev*,scalar_t__,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int hpt374_dma_test_irq(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u16 bfifo = 0;
 u8 dma_stat;

 pci_read_config_word(dev, hwif->select_data + 2, &bfifo);
 if (bfifo & 0x1FF) {

  return 0;
 }

 dma_stat = inb(hwif->dma_base + ATA_DMA_STATUS);

 if (dma_stat & ATA_DMA_INTR)
  return 1;

 return 0;
}
