
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;


 int SCSI_DEVINFO_GLOBAL ;
 int scsi_get_device_flags_keyed (struct scsi_device*,unsigned char const*,unsigned char const*,int ) ;

int scsi_get_device_flags(struct scsi_device *sdev,
     const unsigned char *vendor,
     const unsigned char *model)
{
 return scsi_get_device_flags_keyed(sdev, vendor, model,
        SCSI_DEVINFO_GLOBAL);
}
