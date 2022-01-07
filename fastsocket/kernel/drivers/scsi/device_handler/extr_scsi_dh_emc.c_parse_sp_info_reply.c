
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct clariion_dh_data {int* buffer; int default_sp; int lun_state; int current_sp; int port; } ;


 int CLARIION_NAME ;
 int KERN_NOTICE ;
 int KERN_WARNING ;
 int SCSI_DH_DEV_TEMP_BUSY ;
 int SCSI_DH_NOSYS ;
 int SCSI_DH_OK ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,...) ;

__attribute__((used)) static int parse_sp_info_reply(struct scsi_device *sdev,
          struct clariion_dh_data *csdev)
{
 int err = SCSI_DH_OK;


 if (csdev->buffer[48] != 0) {
  sdev_printk(KERN_NOTICE, sdev, "%s: Detected in-progress "
       "ucode upgrade NDU operation while finding "
       "current active SP.", CLARIION_NAME);
  err = SCSI_DH_DEV_TEMP_BUSY;
  goto out;
 }
 if (csdev->buffer[4] > 2) {

  sdev_printk(KERN_NOTICE, sdev,
       "%s: invalid VPD page 0xC0 format\n",
       CLARIION_NAME);
  err = SCSI_DH_NOSYS;
  goto out;
 }
 switch (csdev->buffer[28] & 0x0f) {
 case 6:
  sdev_printk(KERN_NOTICE, sdev,
       "%s: ALUA failover mode detected\n",
       CLARIION_NAME);
  break;
 case 4:

  break;
 default:
  sdev_printk(KERN_WARNING, sdev,
       "%s: Invalid failover mode %d\n",
       CLARIION_NAME, csdev->buffer[28] & 0x0f);
  err = SCSI_DH_NOSYS;
  goto out;
 }

 csdev->default_sp = csdev->buffer[5];
 csdev->lun_state = csdev->buffer[4];
 csdev->current_sp = csdev->buffer[8];
 csdev->port = csdev->buffer[7];

out:
 return err;
}
