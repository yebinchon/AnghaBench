
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int* id; int cyl; int head; int sect; int bios_cyl; int bios_head; int bios_sect; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_CUR_CYLS ;
 size_t ATA_ID_CUR_HEADS ;
 size_t ATA_ID_CUR_SECTORS ;
 size_t ATA_ID_CYLS ;
 size_t ATA_ID_HEADS ;
 size_t ATA_ID_SECTORS ;
 scalar_t__ ata_id_current_chs_valid (int*) ;

__attribute__((used)) static void ide_disk_init_chs(ide_drive_t *drive)
{
 u16 *id = drive->id;


 if (!drive->cyl || !drive->head || !drive->sect) {
  drive->cyl = drive->bios_cyl = id[ATA_ID_CYLS];
  drive->head = drive->bios_head = id[ATA_ID_HEADS];
  drive->sect = drive->bios_sect = id[ATA_ID_SECTORS];
 }


 if (ata_id_current_chs_valid(id)) {
  drive->cyl = id[ATA_ID_CUR_CYLS];
  drive->head = id[ATA_ID_CUR_HEADS];
  drive->sect = id[ATA_ID_CUR_SECTORS];
 }


 if (drive->head > 16 && id[ATA_ID_HEADS] && id[ATA_ID_HEADS] <= 16) {
  drive->cyl = id[ATA_ID_CYLS];
  drive->head = id[ATA_ID_HEADS];
  drive->sect = id[ATA_ID_SECTORS];
 }
}
