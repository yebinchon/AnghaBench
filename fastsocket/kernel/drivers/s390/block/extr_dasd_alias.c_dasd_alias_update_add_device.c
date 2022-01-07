
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dasd_eckd_private {TYPE_1__* lcu; } ;
struct dasd_device {scalar_t__ private; } ;
struct TYPE_2__ {int flags; } ;


 int UPDATE_PENDING ;
 int dasd_alias_add_device (struct dasd_device*) ;

int dasd_alias_update_add_device(struct dasd_device *device)
{
 struct dasd_eckd_private *private;
 private = (struct dasd_eckd_private *) device->private;
 private->lcu->flags |= UPDATE_PENDING;
 return dasd_alias_add_device(device);
}
