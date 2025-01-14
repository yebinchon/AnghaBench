
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int release; int * bus; int * parent; } ;
struct TYPE_6__ {int id; } ;
struct TYPE_7__ {int mod_id; } ;
struct superhyway_device {TYPE_4__ dev; TYPE_1__ id; int name; TYPE_2__ vcr; TYPE_3__* resource; struct superhyway_bus* bus; } ;
struct superhyway_bus {int dummy; } ;
struct resource {int dummy; } ;
struct TYPE_8__ {unsigned long start; int end; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_set_name (TYPE_4__*,char*,int ) ;
 int device_register (TYPE_4__*) ;
 int kfree (struct superhyway_device*) ;
 TYPE_3__* kmalloc (int,int ) ;
 struct superhyway_device* kzalloc (int,int ) ;
 int sprintf (int ,char*,int) ;
 int superhyway_bus_device ;
 int superhyway_bus_type ;
 int superhyway_device_release ;
 int superhyway_devices ;
 int superhyway_read_vcr (struct superhyway_device*,unsigned long,TYPE_2__*) ;

int superhyway_add_device(unsigned long base, struct superhyway_device *sdev,
     struct superhyway_bus *bus)
{
 struct superhyway_device *dev = sdev;

 if (!dev) {
  dev = kzalloc(sizeof(struct superhyway_device), GFP_KERNEL);
  if (!dev)
   return -ENOMEM;

 }

 dev->bus = bus;
 superhyway_read_vcr(dev, base, &dev->vcr);

 if (!dev->resource) {
  dev->resource = kmalloc(sizeof(struct resource), GFP_KERNEL);
  if (!dev->resource) {
   kfree(dev);
   return -ENOMEM;
  }

  dev->resource->name = dev->name;
  dev->resource->start = base;
  dev->resource->end = dev->resource->start + 0x01000000;
 }

 dev->dev.parent = &superhyway_bus_device;
 dev->dev.bus = &superhyway_bus_type;
 dev->dev.release = superhyway_device_release;
 dev->id.id = dev->vcr.mod_id;

 sprintf(dev->name, "SuperHyway device %04x", dev->id.id);
 dev_set_name(&dev->dev, "%02x", superhyway_devices);

 superhyway_devices++;

 return device_register(&dev->dev);
}
