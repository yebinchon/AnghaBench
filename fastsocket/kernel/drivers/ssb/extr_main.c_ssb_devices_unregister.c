
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssb_device {scalar_t__ dev; } ;
struct ssb_bus {int nr_devices; struct ssb_device* devices; } ;


 int device_unregister (scalar_t__) ;

__attribute__((used)) static void ssb_devices_unregister(struct ssb_bus *bus)
{
 struct ssb_device *sdev;
 int i;

 for (i = bus->nr_devices - 1; i >= 0; i--) {
  sdev = &(bus->devices[i]);
  if (sdev->dev)
   device_unregister(sdev->dev);
 }
}
