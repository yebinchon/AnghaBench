
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_sense_hdr {int asc; } ;
struct scsi_cd {int previous_state; TYPE_1__* device; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;
struct TYPE_3__ {int changed; } ;


 int CDSL_CURRENT ;
 int EINVAL ;
 int GFP_KERNEL ;
 int SDEV_EVT_MEDIA_CHANGE ;
 int get_sectorsize (struct scsi_cd*) ;
 int kfree (struct scsi_sense_hdr*) ;
 struct scsi_sense_hdr* kzalloc (int,int ) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sdev_evt_send_simple (TYPE_1__*,int ,int ) ;
 int sr_cd_check (struct cdrom_device_info*) ;
 int sr_test_unit_ready (TYPE_1__*,struct scsi_sense_hdr*) ;

__attribute__((used)) static int sr_media_change(struct cdrom_device_info *cdi, int slot)
{
 struct scsi_cd *cd = cdi->handle;
 int retval;
 struct scsi_sense_hdr *sshdr;

 if (CDSL_CURRENT != slot) {

  return -EINVAL;
 }

 sshdr = kzalloc(sizeof(*sshdr), GFP_KERNEL);
 retval = sr_test_unit_ready(cd->device, sshdr);
 if (retval || (scsi_sense_valid(sshdr) &&

         sshdr->asc == 0x3a)) {





  cd->device->changed = 1;

  retval = 1;
  goto out;
 };

 retval = cd->device->changed;
 cd->device->changed = 0;


 if (retval) {

  sr_cd_check(cdi);
  get_sectorsize(cd);
 }

out:

 if (retval != cd->previous_state)
  sdev_evt_send_simple(cd->device, SDEV_EVT_MEDIA_CHANGE,
         GFP_KERNEL);
 cd->previous_state = retval;
 kfree(sshdr);

 return retval;
}
