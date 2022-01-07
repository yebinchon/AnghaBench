
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct scsi_device {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 scalar_t__ IS_ERR (struct scsi_device*) ;
 int PTR_ERR (struct scsi_device*) ;
 struct scsi_device* __scsi_add_device (struct Scsi_Host*,int ,int ,int ,int *) ;
 int scsi_device_put (struct scsi_device*) ;

int scsi_add_device(struct Scsi_Host *host, uint channel,
      uint target, uint lun)
{
 struct scsi_device *sdev =
  __scsi_add_device(host, channel, target, lun, ((void*)0));
 if (IS_ERR(sdev))
  return PTR_ERR(sdev);

 scsi_device_put(sdev);
 return 0;
}
