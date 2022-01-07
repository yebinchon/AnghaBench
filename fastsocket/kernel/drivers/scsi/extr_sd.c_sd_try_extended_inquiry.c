
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {scalar_t__ scsi_level; } ;


 scalar_t__ SCSI_SPC_2 ;

__attribute__((used)) static int sd_try_extended_inquiry(struct scsi_device *sdp)
{





 if (sdp->scsi_level > SCSI_SPC_2)
  return 1;
 return 0;
}
