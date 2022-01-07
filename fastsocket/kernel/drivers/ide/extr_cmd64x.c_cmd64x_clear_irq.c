
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int ARTTIM23 ;
 int ARTTIM23_INTR_CH1 ;
 int CFR ;
 int CFR_INTR_CH0 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cmd64x_clear_irq(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 int irq_reg = hwif->channel ? ARTTIM23 : CFR;
 u8 irq_mask = hwif->channel ? ARTTIM23_INTR_CH1 :
        CFR_INTR_CH0;
 u8 irq_stat = 0;

 (void) pci_read_config_byte(dev, irq_reg, &irq_stat);

 (void) pci_write_config_byte(dev, irq_reg, irq_stat | irq_mask);
}
