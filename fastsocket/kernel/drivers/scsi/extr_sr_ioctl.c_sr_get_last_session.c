
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lba; } ;
struct cdrom_multisession {int xa_flag; TYPE_1__ addr; } ;
struct cdrom_device_info {TYPE_2__* handle; } ;
struct TYPE_4__ {scalar_t__ ms_offset; scalar_t__ xa_flag; } ;
typedef TYPE_2__ Scsi_CD ;



int sr_get_last_session(struct cdrom_device_info *cdi,
   struct cdrom_multisession *ms_info)
{
 Scsi_CD *cd = cdi->handle;

 ms_info->addr.lba = cd->ms_offset;
 ms_info->xa_flag = cd->xa_flag || cd->ms_offset > 0;

 return 0;
}
