
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zc0301_device {int state; int * transfer_buffer; int * urb; struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;
typedef size_t s8 ;


 int DBG (int,char*) ;
 int DEV_DISCONNECTED ;
 size_t ZC0301_URBS ;
 int kfree (int ) ;
 int usb_free_urb (int ) ;
 int usb_kill_urb (int ) ;
 int usb_set_interface (struct usb_device*,int ,int ) ;

__attribute__((used)) static int zc0301_stop_transfer(struct zc0301_device* cam)
{
 struct usb_device *udev = cam->usbdev;
 s8 i;
 int err = 0;

 if (cam->state & DEV_DISCONNECTED)
  return 0;

 for (i = ZC0301_URBS-1; i >= 0; i--) {
  usb_kill_urb(cam->urb[i]);
  usb_free_urb(cam->urb[i]);
  kfree(cam->transfer_buffer[i]);
 }

 err = usb_set_interface(udev, 0, 0);
 if (err)
  DBG(3, "usb_set_interface() failed");

 return err;
}
