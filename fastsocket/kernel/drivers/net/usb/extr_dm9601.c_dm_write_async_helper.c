
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int udev; } ;
struct usb_ctrlrequest {int bRequestType; void* wLength; void* wIndex; void* wValue; int bRequest; } ;
struct urb {int dummy; } ;


 int DM_WRITE_REG ;
 int DM_WRITE_REGS ;
 int GFP_ATOMIC ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 void* cpu_to_le16 (int ) ;
 int deverr (struct usbnet*,char*,...) ;
 int dm_write_async_callback ;
 int kfree (struct usb_ctrlrequest*) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (struct urb*,int ,int ,void*,void*,int ,int ,struct usb_ctrlrequest*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void dm_write_async_helper(struct usbnet *dev, u8 reg, u8 value,
      u16 length, void *data)
{
 struct usb_ctrlrequest *req;
 struct urb *urb;
 int status;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb) {
  deverr(dev, "Error allocating URB in dm_write_async_helper!");
  return;
 }

 req = kmalloc(sizeof(struct usb_ctrlrequest), GFP_ATOMIC);
 if (!req) {
  deverr(dev, "Failed to allocate memory for control request");
  usb_free_urb(urb);
  return;
 }

 req->bRequestType = USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
 req->bRequest = length ? DM_WRITE_REGS : DM_WRITE_REG;
 req->wValue = cpu_to_le16(value);
 req->wIndex = cpu_to_le16(reg);
 req->wLength = cpu_to_le16(length);

 usb_fill_control_urb(urb, dev->udev,
        usb_sndctrlpipe(dev->udev, 0),
        (void *)req, data, length,
        dm_write_async_callback, req);

 status = usb_submit_urb(urb, GFP_ATOMIC);
 if (status < 0) {
  deverr(dev, "Error submitting the control message: status=%d",
         status);
  kfree(req);
  usb_free_urb(urb);
 }
}
