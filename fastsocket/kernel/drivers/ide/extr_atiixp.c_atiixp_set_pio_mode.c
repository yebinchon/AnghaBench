
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


 int ATIIXP_IDE_PIO_MODE ;
 int ATIIXP_IDE_PIO_TIMING ;
 int atiixp_lock ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_dword (struct pci_dev*,int ,int) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 TYPE_3__* pio_timing ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void atiixp_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 unsigned long flags;
 int timing_shift = (drive->dn ^ 1) * 8;
 u32 pio_timing_data;
 u16 pio_mode_data;

 spin_lock_irqsave(&atiixp_lock, flags);

 pci_read_config_word(dev, ATIIXP_IDE_PIO_MODE, &pio_mode_data);
 pio_mode_data &= ~(0x07 << (drive->dn * 4));
 pio_mode_data |= (pio << (drive->dn * 4));
 pci_write_config_word(dev, ATIIXP_IDE_PIO_MODE, pio_mode_data);

 pci_read_config_dword(dev, ATIIXP_IDE_PIO_TIMING, &pio_timing_data);
 pio_timing_data &= ~(0xff << timing_shift);
 pio_timing_data |= (pio_timing[pio].recover_width << timing_shift) |
   (pio_timing[pio].command_width << (timing_shift + 4));
 pci_write_config_dword(dev, ATIIXP_IDE_PIO_TIMING, pio_timing_data);

 spin_unlock_irqrestore(&atiixp_lock, flags);
}
