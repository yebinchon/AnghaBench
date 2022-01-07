
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct superhyway_device {TYPE_1__* resource; } ;
struct superhyway_bus {int dummy; } ;
struct TYPE_2__ {int start; } ;


 int superhyway_add_device (int ,struct superhyway_device*,struct superhyway_bus*) ;

int superhyway_add_devices(struct superhyway_bus *bus,
      struct superhyway_device **devices,
      int nr_devices)
{
 int i, ret = 0;

 for (i = 0; i < nr_devices; i++) {
  struct superhyway_device *dev = devices[i];
  ret |= superhyway_add_device(dev->resource[0].start, dev, bus);
 }

 return ret;
}
