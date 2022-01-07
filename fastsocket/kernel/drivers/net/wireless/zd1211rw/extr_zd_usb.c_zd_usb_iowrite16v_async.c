
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct zd_usb {struct urb* urb_async_waiting; int in_async; } ;
struct zd_ioreq16 {int value; scalar_t__ addr; } ;
struct usb_req_write_regs {struct reg_data* reg_writes; void* id; } ;
struct TYPE_4__ {int bInterval; } ;
struct usb_host_endpoint {TYPE_2__ desc; } ;
struct usb_device {int dummy; } ;
struct urb {int transfer_flags; } ;
struct reg_data {void* value; void* addr; } ;
struct TYPE_3__ {int mutex; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int EP_REGS_OUT ;
 int EWOULDBLOCK ;
 int GFP_KERNEL ;
 int URB_FREE_BUFFER ;
 unsigned int USB_MAX_IOWRITE16_COUNT ;
 int USB_REQ_WRITE_REGS ;
 int ZD_ASSERT (int ) ;
 void* cpu_to_le16 (int ) ;
 int dev_dbg_f (int ,char*,...) ;
 scalar_t__ in_atomic () ;
 int iowrite16v_urb_complete ;
 struct usb_req_write_regs* kmalloc (int,int ) ;
 int mutex_is_locked (int *) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 scalar_t__ usb_endpoint_xfer_int (TYPE_2__*) ;
 int usb_fill_bulk_urb (struct urb*,struct usb_device*,int ,struct usb_req_write_regs*,int,int ,struct zd_usb*) ;
 int usb_fill_int_urb (struct urb*,struct usb_device*,int ,struct usb_req_write_regs*,int,int ,struct zd_usb*,int ) ;
 int usb_free_urb (struct urb*) ;
 struct usb_host_endpoint* usb_pipe_endpoint (struct usb_device*,int ) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;
 int usb_sndintpipe (struct usb_device*,int ) ;
 int zd_submit_waiting_urb (struct zd_usb*,int) ;
 int zd_usb_dev (struct zd_usb*) ;
 TYPE_1__* zd_usb_to_chip (struct zd_usb*) ;
 struct usb_device* zd_usb_to_usbdev (struct zd_usb*) ;

int zd_usb_iowrite16v_async(struct zd_usb *usb, const struct zd_ioreq16 *ioreqs,
       unsigned int count)
{
 int r;
 struct usb_device *udev;
 struct usb_req_write_regs *req = ((void*)0);
 int i, req_len;
 struct urb *urb;
 struct usb_host_endpoint *ep;

 ZD_ASSERT(mutex_is_locked(&zd_usb_to_chip(usb)->mutex));
 ZD_ASSERT(usb->in_async);

 if (count == 0)
  return 0;
 if (count > USB_MAX_IOWRITE16_COUNT) {
  dev_dbg_f(zd_usb_dev(usb),
   "error: count %u exceeds possible max %u\n",
   count, USB_MAX_IOWRITE16_COUNT);
  return -EINVAL;
 }
 if (in_atomic()) {
  dev_dbg_f(zd_usb_dev(usb),
   "error: io in atomic context not supported\n");
  return -EWOULDBLOCK;
 }

 udev = zd_usb_to_usbdev(usb);

 ep = usb_pipe_endpoint(udev, usb_sndintpipe(udev, EP_REGS_OUT));
 if (!ep)
  return -ENOENT;

 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb)
  return -ENOMEM;

 req_len = sizeof(struct usb_req_write_regs) +
    count * sizeof(struct reg_data);
 req = kmalloc(req_len, GFP_KERNEL);
 if (!req) {
  r = -ENOMEM;
  goto error;
 }

 req->id = cpu_to_le16(USB_REQ_WRITE_REGS);
 for (i = 0; i < count; i++) {
  struct reg_data *rw = &req->reg_writes[i];
  rw->addr = cpu_to_le16((u16)ioreqs[i].addr);
  rw->value = cpu_to_le16(ioreqs[i].value);
 }




 if (usb_endpoint_xfer_int(&ep->desc))
  usb_fill_int_urb(urb, udev, usb_sndintpipe(udev, EP_REGS_OUT),
     req, req_len, iowrite16v_urb_complete, usb,
     ep->desc.bInterval);
 else
  usb_fill_bulk_urb(urb, udev, usb_sndbulkpipe(udev, EP_REGS_OUT),
      req, req_len, iowrite16v_urb_complete, usb);

 urb->transfer_flags |= URB_FREE_BUFFER;


 r = zd_submit_waiting_urb(usb, 0);
 if (r) {
  dev_dbg_f(zd_usb_dev(usb),
   "error in zd_submit_waiting_usb(). "
   "Error number %d\n", r);
  goto error;
 }




 usb->urb_async_waiting = urb;
 return 0;
error:
 usb_free_urb(urb);
 return r;
}
