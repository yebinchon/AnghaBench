
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {TYPE_1__* handle; } ;
struct TYPE_2__ {int device; } ;
typedef TYPE_1__ Scsi_CD ;


 int SCSI_REMOVAL_ALLOW ;
 int SCSI_REMOVAL_PREVENT ;
 int scsi_set_medium_removal (int ,int ) ;

int sr_lock_door(struct cdrom_device_info *cdi, int lock)
{
 Scsi_CD *cd = cdi->handle;

 return scsi_set_medium_removal(cd->device, lock ?
         SCSI_REMOVAL_PREVENT : SCSI_REMOVAL_ALLOW);
}
