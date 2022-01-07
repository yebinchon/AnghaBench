
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct sas_end_device {int tlr_supported; } ;


 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kzalloc (int const,int ) ;
 struct sas_end_device* sas_sdev_to_rdev (struct scsi_device*) ;
 scalar_t__ scsi_get_vpd_page (struct scsi_device*,int,char*,int const) ;

unsigned int
sas_tlr_supported(struct scsi_device *sdev)
{
 const int vpd_len = 32;
 struct sas_end_device *rdev = sas_sdev_to_rdev(sdev);
 char *buffer = kzalloc(vpd_len, GFP_KERNEL);
 int ret = 0;

 if (scsi_get_vpd_page(sdev, 0x90, buffer, vpd_len))
  goto out;







 ret = buffer[12] & 0x01;

 out:
 kfree(buffer);
 rdev->tlr_supported = ret;
 return ret;

}
