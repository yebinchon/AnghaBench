
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_7__ {int recover_width; int command_width; } ;
struct TYPE_5__ {int dev; } ;


 int ATIIXP_IDE_MDMA_TIMING ;
 int ATIIXP_IDE_UDMA_CONTROL ;
 int ATIIXP_IDE_UDMA_MODE ;
 int const XFER_MW_DMA_0 ;
 int const XFER_UDMA_0 ;
 int atiixp_lock ;
 TYPE_3__* mdma_timing ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void atiixp_set_dma_mode(ide_drive_t *drive, const u8 speed)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 unsigned long flags;
 int timing_shift = (drive->dn ^ 1) * 8;
 u32 tmp32;
 u16 tmp16;
 u16 udma_ctl = 0;

 spin_lock_irqsave(&atiixp_lock, flags);

 pci_read_config_word(dev, ATIIXP_IDE_UDMA_CONTROL, &udma_ctl);

 if (speed >= XFER_UDMA_0) {
  pci_read_config_word(dev, ATIIXP_IDE_UDMA_MODE, &tmp16);
  tmp16 &= ~(0x07 << (drive->dn * 4));
  tmp16 |= ((speed & 0x07) << (drive->dn * 4));
  pci_write_config_word(dev, ATIIXP_IDE_UDMA_MODE, tmp16);

  udma_ctl |= (1 << drive->dn);
 } else if (speed >= XFER_MW_DMA_0) {
  u8 i = speed & 0x03;

  pci_read_config_dword(dev, ATIIXP_IDE_MDMA_TIMING, &tmp32);
  tmp32 &= ~(0xff << timing_shift);
  tmp32 |= (mdma_timing[i].recover_width << timing_shift) |
    (mdma_timing[i].command_width << (timing_shift + 4));
  pci_write_config_dword(dev, ATIIXP_IDE_MDMA_TIMING, tmp32);

  udma_ctl &= ~(1 << drive->dn);
 }

 pci_write_config_word(dev, ATIIXP_IDE_UDMA_CONTROL, udma_ctl);

 spin_unlock_irqrestore(&atiixp_lock, flags);
}
