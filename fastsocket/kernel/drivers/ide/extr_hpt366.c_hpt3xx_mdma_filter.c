
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct hpt_info {int chip_type; } ;
struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int id; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;






 int ata_id_is_sata (int ) ;
 struct hpt_info* hpt3xx_get_info (int ) ;

__attribute__((used)) static u8 hpt3xx_mdma_filter(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 struct hpt_info *info = hpt3xx_get_info(hwif->dev);

 switch (info->chip_type) {
 case 131 :
 case 130:
 case 129:
 case 128 :
  if (ata_id_is_sata(drive->id))
   return 0x00;

 default:
  return 0x07;
 }
}
