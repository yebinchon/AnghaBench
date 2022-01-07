
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int frame_errors; int udev; } ;
struct usb_ctrlrequest {int bRequestType; void* wLength; void* wIndex; void* wValue; int bRequest; } ;
struct urb {int dummy; } ;


 int GFP_ATOMIC ;
 int REG_USBCTL ;
 int REQUEST_REGISTER ;
 int USBCTL_FLUSH_OTHER ;
 int USBCTL_FLUSH_THIS ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 void* cpu_to_le16 (int) ;
 int devdbg (struct usbnet*,char*) ;
 int kfree (struct usb_ctrlrequest*) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 int nc_flush_complete ;
 scalar_t__ netif_msg_rx_err (struct usbnet*) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (struct urb*,int ,int ,unsigned char*,int *,int ,int ,struct usb_ctrlrequest*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndctrlpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void nc_ensure_sync(struct usbnet *dev)
{
 dev->frame_errors++;
 if (dev->frame_errors > 5) {
  struct urb *urb;
  struct usb_ctrlrequest *req;
  int status;


  urb = usb_alloc_urb(0, GFP_ATOMIC);
  if (!urb)
   return;

  req = kmalloc(sizeof *req, GFP_ATOMIC);
  if (!req) {
   usb_free_urb(urb);
   return;
  }

  req->bRequestType = USB_DIR_OUT
   | USB_TYPE_VENDOR
   | USB_RECIP_DEVICE;
  req->bRequest = REQUEST_REGISTER;
  req->wValue = cpu_to_le16(USBCTL_FLUSH_THIS
    | USBCTL_FLUSH_OTHER);
  req->wIndex = cpu_to_le16(REG_USBCTL);
  req->wLength = cpu_to_le16(0);




  usb_fill_control_urb(urb, dev->udev,
   usb_sndctrlpipe(dev->udev, 0),
   (unsigned char *) req,
   ((void*)0), 0,
   nc_flush_complete, req);
  status = usb_submit_urb(urb, GFP_ATOMIC);
  if (status) {
   kfree(req);
   usb_free_urb(urb);
   return;
  }

  if (netif_msg_rx_err(dev))
   devdbg(dev, "flush net1080; too many framing errors");
  dev->frame_errors = 0;
 }
}
