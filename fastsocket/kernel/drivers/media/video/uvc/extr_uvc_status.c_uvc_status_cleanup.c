
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_device {int status; int int_urb; } ;


 int kfree (int ) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;
 int uvc_input_cleanup (struct uvc_device*) ;

void uvc_status_cleanup(struct uvc_device *dev)
{
 usb_kill_urb(dev->int_urb);
 usb_free_urb(dev->int_urb);
 kfree(dev->status);
 uvc_input_cleanup(dev);
}
