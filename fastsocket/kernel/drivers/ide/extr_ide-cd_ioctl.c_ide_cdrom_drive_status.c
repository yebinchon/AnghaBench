
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_sense {scalar_t__ sense_key; int asc; int ascq; } ;
struct media_event_desc {scalar_t__ door_open; scalar_t__ media_present; } ;
struct cdrom_device_info {int * handle; } ;
typedef int ide_drive_t ;


 int CDSL_CURRENT ;
 int CDS_DISC_OK ;
 int CDS_DRIVE_NOT_READY ;
 int CDS_NO_DISC ;
 int CDS_TRAY_OPEN ;
 int EINVAL ;
 scalar_t__ NOT_READY ;
 scalar_t__ UNIT_ATTENTION ;
 int cdrom_check_status (int *,struct request_sense*) ;
 int cdrom_get_media_event (struct cdrom_device_info*,struct media_event_desc*) ;

int ide_cdrom_drive_status(struct cdrom_device_info *cdi, int slot_nr)
{
 ide_drive_t *drive = cdi->handle;
 struct media_event_desc med;
 struct request_sense sense;
 int stat;

 if (slot_nr != CDSL_CURRENT)
  return -EINVAL;

 stat = cdrom_check_status(drive, &sense);
 if (!stat || sense.sense_key == UNIT_ATTENTION)
  return CDS_DISC_OK;

 if (!cdrom_get_media_event(cdi, &med)) {
  if (med.media_present)
   return CDS_DISC_OK;
  else if (med.door_open)
   return CDS_TRAY_OPEN;
  else
   return CDS_NO_DISC;
 }

 if (sense.sense_key == NOT_READY && sense.asc == 0x04
   && sense.ascq == 0x04)
  return CDS_DISC_OK;






 if (sense.sense_key == NOT_READY) {
  if (sense.asc == 0x3a && sense.ascq == 1)
   return CDS_NO_DISC;
  else
   return CDS_TRAY_OPEN;
 }
 return CDS_DRIVE_NOT_READY;
}
