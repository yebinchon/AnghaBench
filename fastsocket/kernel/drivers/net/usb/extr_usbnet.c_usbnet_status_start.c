
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {int interrupt_count; int interrupt_mutex; TYPE_1__* udev; int * interrupt; } ;
typedef int gfp_t ;
struct TYPE_2__ {int dev; } ;


 int WARN_ON_ONCE (int ) ;
 int dev_dbg (int *,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_submit_urb (int *,int ) ;

int usbnet_status_start(struct usbnet *dev, gfp_t mem_flags)
{
 int ret = 0;

 WARN_ON_ONCE(dev->interrupt == ((void*)0));
 if (dev->interrupt) {
  mutex_lock(&dev->interrupt_mutex);

  if (++dev->interrupt_count == 1)
   ret = usb_submit_urb(dev->interrupt, mem_flags);

  dev_dbg(&dev->udev->dev, "incremented interrupt URB count to %d\n",
   dev->interrupt_count);
  mutex_unlock(&dev->interrupt_mutex);
 }
 return ret;
}
