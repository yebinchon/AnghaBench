
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cdrom_device_info {TYPE_1__* handle; } ;
struct TYPE_3__ {int dev_flags; } ;
typedef TYPE_1__ ide_drive_t ;


 int CDSL_CURRENT ;
 int EINVAL ;
 int IDE_DFLAG_MEDIA_CHANGED ;
 int cdrom_check_status (TYPE_1__*,int *) ;

int ide_cdrom_check_media_change_real(struct cdrom_device_info *cdi,
           int slot_nr)
{
 ide_drive_t *drive = cdi->handle;
 int retval;

 if (slot_nr == CDSL_CURRENT) {
  (void) cdrom_check_status(drive, ((void*)0));
  retval = (drive->dev_flags & IDE_DFLAG_MEDIA_CHANGED) ? 1 : 0;
  drive->dev_flags &= ~IDE_DFLAG_MEDIA_CHANGED;
  return retval;
 } else {
  return -EINVAL;
 }
}
