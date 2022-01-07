
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cdrom_tochdr {int cdth_trk1; int cdth_trk0; } ;
struct cdrom_info {struct atapi_toc* toc; } ;
struct TYPE_5__ {int last_track; int first_track; } ;
struct atapi_toc {TYPE_1__ hdr; } ;
struct TYPE_6__ {struct cdrom_info* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 int ide_cd_read_toc (TYPE_2__*,int *) ;

__attribute__((used)) static int ide_cd_read_tochdr(ide_drive_t *drive, void *arg)
{
 struct cdrom_info *cd = drive->driver_data;
 struct cdrom_tochdr *tochdr = arg;
 struct atapi_toc *toc;
 int stat;


 stat = ide_cd_read_toc(drive, ((void*)0));
 if (stat)
  return stat;

 toc = cd->toc;
 tochdr->cdth_trk0 = toc->hdr.first_track;
 tochdr->cdth_trk1 = toc->hdr.last_track;

 return 0;
}
