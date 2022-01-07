
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int scc_ide_inb (int ) ;
 int scc_ide_outb (int,int ) ;

__attribute__((used)) static void scc_dma_start(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 dma_cmd = scc_ide_inb(hwif->dma_base);


 scc_ide_outb(dma_cmd | 1, hwif->dma_base);
}
