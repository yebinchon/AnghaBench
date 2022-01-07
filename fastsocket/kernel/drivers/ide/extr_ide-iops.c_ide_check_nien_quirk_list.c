
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dev_flags; int * id; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_PROD ;
 int IDE_DFLAG_NIEN_QUIRK ;
 char** nien_quirk_list ;
 int * strstr (char const*,char const*) ;

void ide_check_nien_quirk_list(ide_drive_t *drive)
{
 const char **list, *m = (char *)&drive->id[ATA_ID_PROD];

 for (list = nien_quirk_list; *list != ((void*)0); list++)
  if (strstr(m, *list) != ((void*)0)) {
   drive->dev_flags |= IDE_DFLAG_NIEN_QUIRK;
   return;
  }
}
