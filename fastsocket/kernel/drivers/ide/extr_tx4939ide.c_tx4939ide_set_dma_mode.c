
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_4__ {int select_data; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {scalar_t__ dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ const XFER_MW_DMA_0 ;
 scalar_t__ const XFER_UDMA_0 ;

__attribute__((used)) static void tx4939ide_set_dma_mode(ide_drive_t *drive, const u8 mode)
{
 ide_hwif_t *hwif = drive->hwif;
 u32 mask, val;


 if (mode >= XFER_UDMA_0)
  val = mode - XFER_UDMA_0 + 8;
 else
  val = mode - XFER_MW_DMA_0 + 5;
 if (drive->dn) {
  mask = 0x00f00000;
  val <<= 20;
 } else {
  mask = 0x000000f0;
  val <<= 4;
 }
 hwif->select_data = (hwif->select_data & ~mask) | val;

}
