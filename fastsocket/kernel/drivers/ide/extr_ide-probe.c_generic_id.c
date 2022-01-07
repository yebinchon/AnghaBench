
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int sect; int head; int cyl; int * id; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_CUR_CYLS ;
 size_t ATA_ID_CUR_HEADS ;
 size_t ATA_ID_CUR_SECTORS ;
 size_t ATA_ID_CYLS ;
 size_t ATA_ID_HEADS ;
 size_t ATA_ID_SECTORS ;

__attribute__((used)) static void generic_id(ide_drive_t *drive)
{
 u16 *id = drive->id;

 id[ATA_ID_CUR_CYLS] = id[ATA_ID_CYLS] = drive->cyl;
 id[ATA_ID_CUR_HEADS] = id[ATA_ID_HEADS] = drive->head;
 id[ATA_ID_CUR_SECTORS] = id[ATA_ID_SECTORS] = drive->sect;
}
