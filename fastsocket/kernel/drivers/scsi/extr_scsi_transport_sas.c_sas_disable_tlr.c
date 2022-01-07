
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct sas_end_device {scalar_t__ tlr_enabled; } ;


 struct sas_end_device* sas_sdev_to_rdev (struct scsi_device*) ;

void
sas_disable_tlr(struct scsi_device *sdev)
{
 struct sas_end_device *rdev = sas_sdev_to_rdev(sdev);

 rdev->tlr_enabled = 0;
}
