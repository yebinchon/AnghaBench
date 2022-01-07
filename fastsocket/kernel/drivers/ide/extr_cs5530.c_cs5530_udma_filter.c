
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_7__ {scalar_t__ ultra_mask; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_8__ {int* id; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 size_t ATA_ID_FIELD_VALID ;
 size_t ATA_ID_MWDMA_MODES ;
 size_t ATA_ID_UDMA_MODES ;
 scalar_t__ __ide_dma_bad_drive (TYPE_2__*) ;
 scalar_t__ ata_id_has_dma (int*) ;
 TYPE_2__* ide_get_pair_dev (TYPE_2__*) ;

__attribute__((used)) static u8 cs5530_udma_filter(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 ide_drive_t *mate = ide_get_pair_dev(drive);
 u16 *mateid;
 u8 mask = hwif->ultra_mask;

 if (mate == ((void*)0))
  goto out;
 mateid = mate->id;

 if (ata_id_has_dma(mateid) && __ide_dma_bad_drive(mate) == 0) {
  if ((mateid[ATA_ID_FIELD_VALID] & 4) &&
      (mateid[ATA_ID_UDMA_MODES] & 7))
   goto out;
  if (mateid[ATA_ID_MWDMA_MODES] & 7)
   mask = 0;
 }
out:
 return mask;
}
