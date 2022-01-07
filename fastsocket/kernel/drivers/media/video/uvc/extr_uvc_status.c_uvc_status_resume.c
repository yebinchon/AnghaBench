
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int * int_urb; int users; } ;


 int GFP_NOIO ;
 scalar_t__ atomic_read (int *) ;
 int usb_submit_urb (int *,int ) ;

int uvc_status_resume(struct uvc_device *dev)
{
 if (dev->int_urb == ((void*)0) || atomic_read(&dev->users) == 0)
  return 0;

 return usb_submit_urb(dev->int_urb, GFP_NOIO);
}
