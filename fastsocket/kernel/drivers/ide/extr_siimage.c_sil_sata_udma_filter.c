
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int * id; } ;
typedef TYPE_1__ ide_drive_t ;


 size_t ATA_ID_PROD ;
 int ATA_UDMA5 ;
 int ATA_UDMA6 ;
 scalar_t__ strstr (char*,char*) ;

__attribute__((used)) static u8 sil_sata_udma_filter(ide_drive_t *drive)
{
 char *m = (char *)&drive->id[ATA_ID_PROD];

 return strstr(m, "Maxtor") ? ATA_UDMA5 : ATA_UDMA6;
}
