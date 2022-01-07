
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opm; int ppm; int npm; int tbvpm; } ;
struct dasd_device {TYPE_2__* discipline; TYPE_1__ path_data; } ;
struct ccw_device {int dummy; } ;
typedef int __u8 ;
struct TYPE_4__ {int (* kick_validate ) (struct dasd_device*) ;} ;


 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,char*) ;
 int DBF_WARNING ;
 scalar_t__ IS_ERR (struct dasd_device*) ;
 int PE_PATHGROUP_ESTABLISHED ;
 int PE_PATH_AVAILABLE ;
 int PE_PATH_GONE ;
 struct dasd_device* dasd_device_from_cdev_locked (struct ccw_device*) ;
 int dasd_generic_last_path_gone (struct dasd_device*) ;
 int dasd_put_device (struct dasd_device*) ;
 int dasd_schedule_device_bh (struct dasd_device*) ;
 int stub1 (struct dasd_device*) ;

void dasd_generic_path_event(struct ccw_device *cdev, int *path_event)
{
 int chp;
 __u8 oldopm, eventlpm;
 struct dasd_device *device;

 device = dasd_device_from_cdev_locked(cdev);
 if (IS_ERR(device))
  return;
 for (chp = 0; chp < 8; chp++) {
  eventlpm = 0x80 >> chp;
  if (path_event[chp] & PE_PATH_GONE) {
   oldopm = device->path_data.opm;
   device->path_data.opm &= ~eventlpm;
   device->path_data.ppm &= ~eventlpm;
   device->path_data.npm &= ~eventlpm;
   if (oldopm && !device->path_data.opm)
    dasd_generic_last_path_gone(device);
  }
  if (path_event[chp] & PE_PATH_AVAILABLE) {
   device->path_data.opm &= ~eventlpm;
   device->path_data.ppm &= ~eventlpm;
   device->path_data.npm &= ~eventlpm;
   device->path_data.tbvpm |= eventlpm;
   dasd_schedule_device_bh(device);
  }
  if (path_event[chp] & PE_PATHGROUP_ESTABLISHED) {
   if (!(device->path_data.opm & eventlpm) &&
       !(device->path_data.tbvpm & eventlpm)) {





    device->path_data.tbvpm |= eventlpm;
    dasd_schedule_device_bh(device);
   }
   DBF_DEV_EVENT(DBF_WARNING, device, "%s",
          "Pathgroup re-established\n");
   if (device->discipline->kick_validate)
    device->discipline->kick_validate(device);
  }
 }
 dasd_put_device(device);
}
