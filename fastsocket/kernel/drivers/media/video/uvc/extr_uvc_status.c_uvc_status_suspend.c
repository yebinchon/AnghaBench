
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int int_urb; int users; } ;


 scalar_t__ atomic_read (int *) ;
 int usb_kill_urb (int ) ;

int uvc_status_suspend(struct uvc_device *dev)
{
 if (atomic_read(&dev->users))
  usb_kill_urb(dev->int_urb);

 return 0;
}
