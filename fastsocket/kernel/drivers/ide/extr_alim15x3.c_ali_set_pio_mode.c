
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ide_timing {int setup; int active; int cycle; } ;
struct TYPE_4__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dn; scalar_t__ media; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int const XFER_PIO_0 ;
 scalar_t__ ide_disk ;
 int ide_pci_clk ;
 struct ide_timing* ide_timing_find_mode (int const) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void ali_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct ide_timing *t = ide_timing_find_mode(XFER_PIO_0 + pio);
 int s_time = t->setup, a_time = t->active, c_time = t->cycle;
 u8 s_clc, a_clc, r_clc;
 unsigned long flags;
 int bus_speed = ide_pci_clk ? ide_pci_clk : 33;
 int port = hwif->channel ? 0x5c : 0x58;
 int portFIFO = hwif->channel ? 0x55 : 0x54;
 u8 cd_dma_fifo = 0, unit = drive->dn & 1;

 if ((s_clc = (s_time * bus_speed + 999) / 1000) >= 8)
  s_clc = 0;
 if ((a_clc = (a_time * bus_speed + 999) / 1000) >= 8)
  a_clc = 0;

 if (!(r_clc = (c_time * bus_speed + 999) / 1000 - a_clc - s_clc)) {
  r_clc = 1;
 } else {
  if (r_clc >= 16)
   r_clc = 0;
 }
 local_irq_save(flags);




 pci_read_config_byte(dev, portFIFO, &cd_dma_fifo);
 if (drive->media==ide_disk) {
  if (unit) {
   pci_write_config_byte(dev, portFIFO, (cd_dma_fifo & 0x0F) | 0x50);
  } else {
   pci_write_config_byte(dev, portFIFO, (cd_dma_fifo & 0xF0) | 0x05);
  }
 } else {
  if (unit) {
   pci_write_config_byte(dev, portFIFO, cd_dma_fifo & 0x0F);
  } else {
   pci_write_config_byte(dev, portFIFO, cd_dma_fifo & 0xF0);
  }
 }

 pci_write_config_byte(dev, port, s_clc);
 pci_write_config_byte(dev, port + unit + 2, (a_clc << 4) | r_clc);
 local_irq_restore(flags);
}
