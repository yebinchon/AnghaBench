
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {scalar_t__ running; TYPE_1__* desc; int name; } ;
struct TYPE_2__ {int status; } ;


 int VIRTIO_CONFIG_S_DRIVER_OK ;
 int VIRTIO_CONFIG_S_FAILED ;
 int reset_device (struct device*) ;
 int start_device (struct device*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void update_device_status(struct device *dev)
{

 if (dev->desc->status == 0)
  reset_device(dev);
 else if (dev->desc->status & VIRTIO_CONFIG_S_FAILED) {
  warnx("Device %s configuration FAILED", dev->name);
  if (dev->running)
   reset_device(dev);
 } else if (dev->desc->status & VIRTIO_CONFIG_S_DRIVER_OK) {
  if (!dev->running)
   start_device(dev);
 }
}
