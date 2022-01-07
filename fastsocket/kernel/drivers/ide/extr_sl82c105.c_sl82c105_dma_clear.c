
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct TYPE_5__ {int name; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int dev; } ;


 int DBG (char*) ;
 int sl82c105_reset_host (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sl82c105_dma_clear(ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);

 DBG(("sl82c105_dma_clear(drive:%s)\n", drive->name));

 sl82c105_reset_host(dev);
}
