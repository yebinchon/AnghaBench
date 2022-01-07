
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int udev; } ;
struct usb_ctrlrequest {int bRequestType; void* wLength; void* wIndex; void* wValue; int bRequest; } ;
struct urb {int dummy; } ;


 int GFP_ATOMIC ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int asix_async_cmd_callback ;
 void* cpu_to_le16 (int ) ;
 int devdbg (struct usbnet*,char*,int ,int ,int ,int ) ;
 int deverr (struct usbnet*,char*,...) ;
 int kfree (struct usb_ctrlrequest*) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (struct urb*,int ,int ,void*,void*,int ,int ,struct usb_ctrlrequest*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void
asix_write_cmd_async(struct usbnet *dev, u8 cmd, u16 value, u16 index,
        u16 size, void *data)
{
 struct usb_ctrlrequest *req;
 int status;
 struct urb *urb;

 devdbg(dev,"asix_write_cmd_async() cmd=0x%02x value=0x%04x index=0x%04x size=%d",
  cmd, value, index, size);
 if ((urb = usb_alloc_urb(0, GFP_ATOMIC)) == ((void*)0)) {
  deverr(dev, "Error allocating URB in write_cmd_async!");
  return;
 }

 if ((req = kmalloc(sizeof(struct usb_ctrlrequest), GFP_ATOMIC)) == ((void*)0)) {
  deverr(dev, "Failed to allocate memory for control request");
  usb_free_urb(urb);
  return;
 }

 req->bRequestType = USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
 req->bRequest = cmd;
 req->wValue = cpu_to_le16(value);
 req->wIndex = cpu_to_le16(index);
 req->wLength = cpu_to_le16(size);

 usb_fill_control_urb(urb, dev->udev,
        usb_sndctrlpipe(dev->udev, 0),
        (void *)req, data, size,
        asix_async_cmd_callback, req);

 if((status = usb_submit_urb(urb, GFP_ATOMIC)) < 0) {
  deverr(dev, "Error submitting the control message: status=%d",
    status);
  kfree(req);
  usb_free_urb(urb);
 }
}
