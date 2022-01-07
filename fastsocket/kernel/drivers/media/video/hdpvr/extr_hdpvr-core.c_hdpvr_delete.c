
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdpvr_device {int udev; scalar_t__ video_dev; } ;


 int hdpvr_free_buffers (struct hdpvr_device*) ;
 int usb_put_dev (int ) ;
 int video_device_release (scalar_t__) ;

void hdpvr_delete(struct hdpvr_device *dev)
{
 hdpvr_free_buffers(dev);

 if (dev->video_dev)
  video_device_release(dev->video_dev);

 usb_put_dev(dev->udev);
}
