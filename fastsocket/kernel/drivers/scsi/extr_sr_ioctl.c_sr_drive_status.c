
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_cd {int device; } ;
struct media_event_desc {scalar_t__ door_open; scalar_t__ media_present; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;


 int CDSL_CURRENT ;
 int CDS_DISC_OK ;
 int CDS_DRIVE_NOT_READY ;
 int CDS_NO_DISC ;
 int CDS_TRAY_OPEN ;
 int EINVAL ;
 scalar_t__ NOT_READY ;
 int cdrom_get_media_event (struct cdrom_device_info*,struct media_event_desc*) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 scalar_t__ sr_test_unit_ready (int ,struct scsi_sense_hdr*) ;

int sr_drive_status(struct cdrom_device_info *cdi, int slot)
{
 struct scsi_cd *cd = cdi->handle;
 struct scsi_sense_hdr sshdr;
 struct media_event_desc med;

 if (CDSL_CURRENT != slot) {

  return -EINVAL;
 }
 if (0 == sr_test_unit_ready(cd->device, &sshdr))
  return CDS_DISC_OK;


 if (scsi_sense_valid(&sshdr) && sshdr.sense_key == NOT_READY
   && sshdr.asc == 0x04 && sshdr.ascq == 0x01)
  return CDS_DRIVE_NOT_READY;

 if (!cdrom_get_media_event(cdi, &med)) {
  if (med.media_present)
   return CDS_DISC_OK;
  else if (med.door_open)
   return CDS_TRAY_OPEN;
  else
   return CDS_NO_DISC;
 }






 if (scsi_sense_valid(&sshdr) && sshdr.sense_key == NOT_READY
   && sshdr.asc == 0x04 && sshdr.ascq == 0x02)
  return CDS_TRAY_OPEN;




 if (sshdr.sense_key == NOT_READY && sshdr.asc == 0x04)
  return CDS_DISC_OK;






 if (scsi_sense_valid(&sshdr) &&

     sshdr.asc == 0x3a)
  return CDS_NO_DISC;
 else
  return CDS_TRAY_OPEN;

 return CDS_DRIVE_NOT_READY;
}
