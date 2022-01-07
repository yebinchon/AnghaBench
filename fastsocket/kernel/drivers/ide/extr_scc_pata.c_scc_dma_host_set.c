
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {scalar_t__ dma_base; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int scc_dma_sff_read_status (TYPE_1__*) ;
 int scc_ide_outb (int,scalar_t__) ;

__attribute__((used)) static void scc_dma_host_set(ide_drive_t *drive, int on)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 unit = drive->dn & 1;
 u8 dma_stat = scc_dma_sff_read_status(hwif);

 if (on)
  dma_stat |= (1 << (5 + unit));
 else
  dma_stat &= ~(1 << (5 + unit));

 scc_ide_outb(dma_stat, hwif->dma_base + 4);
}
