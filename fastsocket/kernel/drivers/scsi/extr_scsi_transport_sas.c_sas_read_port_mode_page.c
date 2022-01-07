
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_mode_data {int header_length; int block_descriptor_length; } ;
struct scsi_device {int dummy; } ;
struct sas_end_device {int ready_led_meaning; char I_T_nexus_loss_timeout; char initiator_response_timeout; } ;


 int BUF_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 struct sas_end_device* sas_sdev_to_rdev (struct scsi_device*) ;
 int scsi_mode_sense (struct scsi_device*,int,int,char*,int,int,int,struct scsi_mode_data*,int *) ;
 int scsi_status_is_good (int) ;

int sas_read_port_mode_page(struct scsi_device *sdev)
{
 char *buffer = kzalloc(BUF_SIZE, GFP_KERNEL), *msdata;
 struct sas_end_device *rdev = sas_sdev_to_rdev(sdev);
 struct scsi_mode_data mode_data;
 int res, error;

 if (!buffer)
  return -ENOMEM;

 res = scsi_mode_sense(sdev, 1, 0x19, buffer, BUF_SIZE, 30*HZ, 3,
         &mode_data, ((void*)0));

 error = -EINVAL;
 if (!scsi_status_is_good(res))
  goto out;

 msdata = buffer + mode_data.header_length +
  mode_data.block_descriptor_length;

 if (msdata - buffer > BUF_SIZE - 8)
  goto out;

 error = 0;

 rdev->ready_led_meaning = msdata[2] & 0x10 ? 1 : 0;
 rdev->I_T_nexus_loss_timeout = (msdata[4] << 8) + msdata[5];
 rdev->initiator_response_timeout = (msdata[6] << 8) + msdata[7];

 out:
 kfree(buffer);
 return error;
}
