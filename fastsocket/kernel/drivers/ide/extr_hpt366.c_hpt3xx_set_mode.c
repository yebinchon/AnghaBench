
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct hpt_timings {int pio_mask; int dma_mask; int ultra_mask; } ;
struct hpt_info {struct hpt_timings* timings; } ;
struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ const XFER_MW_DMA_0 ;
 scalar_t__ const XFER_UDMA_0 ;
 int get_speed_setting (scalar_t__ const,struct hpt_info*) ;
 struct hpt_info* hpt3xx_get_info (int ) ;
 int pci_read_config_dword (struct pci_dev*,scalar_t__,int*) ;
 int pci_write_config_dword (struct pci_dev*,scalar_t__,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void hpt3xx_set_mode(ide_drive_t *drive, const u8 speed)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct hpt_info *info = hpt3xx_get_info(hwif->dev);
 struct hpt_timings *t = info->timings;
 u8 itr_addr = 0x40 + (drive->dn * 4);
 u32 old_itr = 0;
 u32 new_itr = get_speed_setting(speed, info);
 u32 itr_mask = speed < XFER_MW_DMA_0 ? t->pio_mask :
     (speed < XFER_UDMA_0 ? t->dma_mask :
         t->ultra_mask);

 pci_read_config_dword(dev, itr_addr, &old_itr);
 new_itr = (old_itr & ~itr_mask) | (new_itr & itr_mask);




 new_itr &= ~0xc0000000;

 pci_write_config_dword(dev, itr_addr, new_itr);
}
