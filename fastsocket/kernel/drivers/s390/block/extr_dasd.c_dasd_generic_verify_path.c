
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int opm; } ;
struct dasd_device {TYPE_1__ path_data; } ;
typedef int __u8 ;


 int dasd_generic_path_operational (struct dasd_device*) ;

int dasd_generic_verify_path(struct dasd_device *device, __u8 lpm)
{
 if (!device->path_data.opm && lpm) {
  device->path_data.opm = lpm;
  dasd_generic_path_operational(device);
 } else
  device->path_data.opm |= lpm;
 return 0;
}
