
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {TYPE_1__* dma_ops; } ;
typedef TYPE_2__ ide_hwif_t ;
struct TYPE_8__ {TYPE_2__* hwif; } ;
typedef TYPE_3__ ide_drive_t ;
struct TYPE_6__ {int (* dma_sff_read_status ) (TYPE_2__*) ;} ;


 int ATA_DMA_INTR ;
 int stub1 (TYPE_2__*) ;

int ide_dma_test_irq(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 u8 dma_stat = hwif->dma_ops->dma_sff_read_status(hwif);

 return (dma_stat & ATA_DMA_INTR) ? 1 : 0;
}
