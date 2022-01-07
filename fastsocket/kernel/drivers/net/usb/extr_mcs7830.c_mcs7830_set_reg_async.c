
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct usbnet {TYPE_1__* udev; } ;
struct usb_ctrlrequest {void* wLength; void* wIndex; scalar_t__ wValue; int bRequest; int bRequestType; } ;
struct urb {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_ATOMIC ;
 int MCS7830_WR_BMREQ ;
 int MCS7830_WR_BREQ ;
 void* cpu_to_le16 (int ) ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*,...) ;
 int kfree (struct usb_ctrlrequest*) ;
 struct usb_ctrlrequest* kmalloc (int,int ) ;
 int mcs7830_async_cmd_callback ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (struct urb*,TYPE_1__*,int ,void*,void*,int ,int ,struct usb_ctrlrequest*) ;
 int usb_free_urb (struct urb*) ;
 int usb_sndctrlpipe (TYPE_1__*,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void mcs7830_set_reg_async(struct usbnet *dev, u16 index, u16 size, void *data)
{
 struct usb_ctrlrequest *req;
 int ret;
 struct urb *urb;

 urb = usb_alloc_urb(0, GFP_ATOMIC);
 if (!urb) {
  dev_dbg(&dev->udev->dev,
   "Error allocating URB in write_cmd_async!\n");
  return;
 }

 req = kmalloc(sizeof *req, GFP_ATOMIC);
 if (!req) {
  dev_err(&dev->udev->dev,
   "Failed to allocate memory for control request\n");
  goto out;
 }
 req->bRequestType = MCS7830_WR_BMREQ;
 req->bRequest = MCS7830_WR_BREQ;
 req->wValue = 0;
 req->wIndex = cpu_to_le16(index);
 req->wLength = cpu_to_le16(size);

 usb_fill_control_urb(urb, dev->udev,
        usb_sndctrlpipe(dev->udev, 0),
        (void *)req, data, size,
        mcs7830_async_cmd_callback, req);

 ret = usb_submit_urb(urb, GFP_ATOMIC);
 if (ret < 0) {
  dev_err(&dev->udev->dev,
   "Error submitting the control message: ret=%d\n", ret);
  goto out;
 }
 return;
out:
 kfree(req);
 usb_free_urb(urb);
}
