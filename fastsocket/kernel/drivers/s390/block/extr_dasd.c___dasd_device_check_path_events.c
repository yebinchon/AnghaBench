
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ tbvpm; } ;
struct dasd_device {int stopped; TYPE_2__ path_data; TYPE_1__* discipline; } ;
struct TYPE_3__ {int (* verify_path ) (struct dasd_device*,scalar_t__) ;} ;


 int DASD_STOPPED_DC_WAIT ;
 int DASD_UNRESUMED_PM ;
 int dasd_device_set_timer (struct dasd_device*,int) ;
 int stub1 (struct dasd_device*,scalar_t__) ;

__attribute__((used)) static void __dasd_device_check_path_events(struct dasd_device *device)
{
 int rc;

 if (device->path_data.tbvpm) {
  if (device->stopped & ~(DASD_STOPPED_DC_WAIT |
     DASD_UNRESUMED_PM))
   return;
  rc = device->discipline->verify_path(
   device, device->path_data.tbvpm);
  if (rc)
   dasd_device_set_timer(device, 50);
  else
   device->path_data.tbvpm = 0;
 }
}
