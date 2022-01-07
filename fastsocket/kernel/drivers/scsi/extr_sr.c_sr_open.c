
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct scsi_cd {struct scsi_device* device; } ;
struct cdrom_device_info {struct scsi_cd* handle; } ;


 int ENXIO ;
 int scsi_block_when_processing_errors (struct scsi_device*) ;

__attribute__((used)) static int sr_open(struct cdrom_device_info *cdi, int purpose)
{
 struct scsi_cd *cd = cdi->handle;
 struct scsi_device *sdev = cd->device;
 int retval;





 retval = -ENXIO;
 if (!scsi_block_when_processing_errors(sdev))
  goto error_out;

 return 0;

error_out:
 return retval;
}
