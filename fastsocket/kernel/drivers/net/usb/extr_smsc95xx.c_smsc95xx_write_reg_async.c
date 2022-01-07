
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int const u16 ;
struct usbnet {int udev; } ;
struct TYPE_2__ {int bRequestType; int wValue; void* wLength; void* wIndex; int bRequest; } ;
struct usb_context {TYPE_1__ req; } ;
struct urb {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int USB_VENDOR_REQUEST_WRITE_REGISTER ;
 void* cpu_to_le16 (int const) ;
 int devwarn (struct usbnet*,char*,...) ;
 int kfree (struct usb_context*) ;
 struct usb_context* kmalloc (int,int ) ;
 int smsc95xx_async_cmd_callback ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (struct urb*,int ,int ,void*,int *,int const,int ,void*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int smsc95xx_write_reg_async(struct usbnet *dev, u16 index, u32 *data)
{
 struct usb_context *usb_context;
 int status;
 struct urb *urb;
 const u16 size = 4;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb) {
  devwarn(dev, "Error allocating URB");
  return -ENOMEM;
 }

 usb_context = kmalloc(sizeof(struct usb_context), GFP_ATOMIC);
 if (usb_context == ((void*)0)) {
  devwarn(dev, "Error allocating control msg");
  usb_free_urb(urb);
  return -ENOMEM;
 }

 usb_context->req.bRequestType =
  USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
 usb_context->req.bRequest = USB_VENDOR_REQUEST_WRITE_REGISTER;
 usb_context->req.wValue = 00;
 usb_context->req.wIndex = cpu_to_le16(index);
 usb_context->req.wLength = cpu_to_le16(size);

 usb_fill_control_urb(urb, dev->udev, usb_sndctrlpipe(dev->udev, 0),
  (void *)&usb_context->req, data, size,
  smsc95xx_async_cmd_callback,
  (void *)usb_context);

 status = usb_submit_urb(urb, GFP_ATOMIC);
 if (status < 0) {
  devwarn(dev, "Error submitting control msg, sts=%d", status);
  kfree(usb_context);
  usb_free_urb(urb);
 }

 return status;
}
