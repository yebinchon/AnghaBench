
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int host_flags; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_7__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int IDE_HFLAG_TRUST_BIOS_FOR_DMA ;
 int ide_set_max_pio (TYPE_2__*) ;
 scalar_t__ ide_tune_dma (TYPE_2__*) ;

__attribute__((used)) static int ide_dma_check(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;

 if (ide_tune_dma(drive))
  return 0;


 if (hwif->host_flags & IDE_HFLAG_TRUST_BIOS_FOR_DMA)
  return -1;

 ide_set_max_pio(drive);

 return -1;
}
