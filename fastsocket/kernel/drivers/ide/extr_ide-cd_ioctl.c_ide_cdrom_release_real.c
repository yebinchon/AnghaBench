
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {int use_count; TYPE_1__* handle; } ;
struct TYPE_2__ {int atapi_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int IDE_AFLAG_TOC_VALID ;

void ide_cdrom_release_real(struct cdrom_device_info *cdi)
{
 ide_drive_t *drive = cdi->handle;

 if (!cdi->use_count)
  drive->atapi_flags &= ~IDE_AFLAG_TOC_VALID;
}
