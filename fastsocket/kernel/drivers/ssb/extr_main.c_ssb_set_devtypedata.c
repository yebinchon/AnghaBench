
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vendor; scalar_t__ coreid; } ;
struct ssb_device {void* devtypedata; TYPE_1__ id; struct ssb_bus* bus; } ;
struct ssb_bus {int nr_devices; struct ssb_device* devices; } ;



void ssb_set_devtypedata(struct ssb_device *dev, void *data)
{
 struct ssb_bus *bus = dev->bus;
 struct ssb_device *ent;
 int i;

 for (i = 0; i < bus->nr_devices; i++) {
  ent = &(bus->devices[i]);
  if (ent->id.vendor != dev->id.vendor)
   continue;
  if (ent->id.coreid != dev->id.coreid)
   continue;

  ent->devtypedata = data;
 }
}
