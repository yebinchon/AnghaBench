
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dev_flags; int id; } ;
typedef TYPE_1__ ide_drive_t ;


 int EINVAL ;
 int IDE_DFLAG_WCACHE ;
 int SETFEATURES_WC_OFF ;
 int SETFEATURES_WC_ON ;
 scalar_t__ ata_id_flush_enabled (int ) ;
 int ide_do_setfeature (TYPE_1__*,int ,int ) ;
 int update_ordered (TYPE_1__*) ;

__attribute__((used)) static int set_wcache(ide_drive_t *drive, int arg)
{
 int err = 1;

 if (arg < 0 || arg > 1)
  return -EINVAL;

 if (ata_id_flush_enabled(drive->id)) {
  err = ide_do_setfeature(drive,
   arg ? SETFEATURES_WC_ON : SETFEATURES_WC_OFF, 0);
  if (err == 0) {
   if (arg)
    drive->dev_flags |= IDE_DFLAG_WCACHE;
   else
    drive->dev_flags &= ~IDE_DFLAG_WCACHE;
  }
 }

 update_ordered(drive);

 return err;
}
