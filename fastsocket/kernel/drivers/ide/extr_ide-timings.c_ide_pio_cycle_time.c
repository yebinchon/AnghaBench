
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ide_timing {int cycle; } ;
struct TYPE_3__ {int* id; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_EIDE_PIO ;
 size_t ATA_ID_EIDE_PIO_IORDY ;
 size_t ATA_ID_FIELD_VALID ;
 scalar_t__ XFER_PIO_0 ;
 scalar_t__ ata_id_has_iordy (int*) ;
 scalar_t__ ata_id_is_cfa (int*) ;
 struct ide_timing* ide_timing_find_mode (scalar_t__) ;

u16 ide_pio_cycle_time(ide_drive_t *drive, u8 pio)
{
 u16 *id = drive->id;
 struct ide_timing *t = ide_timing_find_mode(XFER_PIO_0 + pio);
 u16 cycle = 0;

 if (id[ATA_ID_FIELD_VALID] & 2) {
  if (ata_id_has_iordy(drive->id))
   cycle = id[ATA_ID_EIDE_PIO_IORDY];
  else
   cycle = id[ATA_ID_EIDE_PIO];


  if (pio < 3 && cycle < t->cycle)
   cycle = 0;


  if (pio > 4 && ata_id_is_cfa(id))
   cycle = 0;
 }

 return cycle ? cycle : t->cycle;
}
