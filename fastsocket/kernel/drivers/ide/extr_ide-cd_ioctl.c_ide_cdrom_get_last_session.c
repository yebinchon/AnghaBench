
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_sense {int dummy; } ;
struct TYPE_4__ {int lba; } ;
struct cdrom_multisession {int xa_flag; TYPE_1__ addr; } ;
struct cdrom_info {struct atapi_toc* toc; } ;
struct cdrom_device_info {TYPE_2__* handle; } ;
struct atapi_toc {int xa_flag; int last_session_lba; } ;
struct TYPE_5__ {int atapi_flags; struct cdrom_info* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;


 int IDE_AFLAG_TOC_VALID ;
 int ide_cd_read_toc (TYPE_2__*,struct request_sense*) ;

int ide_cdrom_get_last_session(struct cdrom_device_info *cdi,
          struct cdrom_multisession *ms_info)
{
 struct atapi_toc *toc;
 ide_drive_t *drive = cdi->handle;
 struct cdrom_info *info = drive->driver_data;
 struct request_sense sense;
 int ret;

 if ((drive->atapi_flags & IDE_AFLAG_TOC_VALID) == 0 || !info->toc) {
  ret = ide_cd_read_toc(drive, &sense);
  if (ret)
   return ret;
 }

 toc = info->toc;
 ms_info->addr.lba = toc->last_session_lba;
 ms_info->xa_flag = toc->xa_flag;

 return 0;
}
