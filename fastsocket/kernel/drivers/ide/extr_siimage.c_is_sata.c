
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int pdev_is_sata (int ) ;
 int to_pci_dev (int ) ;

__attribute__((used)) static inline int is_sata(ide_hwif_t *hwif)
{
 return pdev_is_sata(to_pci_dev(hwif->dev));
}
