
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int scc_dma_sff_read_status (TYPE_1__*) ;
 int scc_ide_inb (scalar_t__) ;
 int scc_ide_outb (int,scalar_t__) ;

__attribute__((used)) static int __scc_dma_end(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 dma_stat, dma_cmd;


 dma_cmd = scc_ide_inb(hwif->dma_base);

 scc_ide_outb(dma_cmd & ~1, hwif->dma_base);

 dma_stat = scc_dma_sff_read_status(hwif);

 scc_ide_outb(dma_stat | 6, hwif->dma_base + 4);

 return (dma_stat & 7) != 4 ? (0x10 | dma_stat) : 0;
}
