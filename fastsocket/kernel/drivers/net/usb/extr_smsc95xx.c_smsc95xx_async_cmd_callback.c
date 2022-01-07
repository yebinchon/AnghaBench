
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct usb_context {struct usbnet* dev; } ;
struct urb {int status; struct usb_context* context; } ;


 int devwarn (struct usbnet*,char*,int) ;
 int kfree (struct usb_context*) ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void smsc95xx_async_cmd_callback(struct urb *urb)
{
 struct usb_context *usb_context = urb->context;
 struct usbnet *dev = usb_context->dev;
 int status = urb->status;

 if (status < 0)
  devwarn(dev, "async callback failed with %d", status);

 kfree(usb_context);
 usb_free_urb(urb);
}
