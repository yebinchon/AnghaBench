
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int * transfer_buffer; int status; } ;
struct dvb_usb_device {int udev; struct dib0700_state* priv; } ;
struct dib0700_state {int fw_version; } ;


 int EINPROGRESS ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int RC_MSG_SIZE_V1_20 ;
 int dib0700_rc_urb_completion ;
 int err (char*) ;
 int * kzalloc (int ,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int ,int ,struct dvb_usb_device*) ;
 int usb_free_urb (struct urb*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_submit_urb (struct urb*,int ) ;

int dib0700_rc_setup(struct dvb_usb_device *d)
{
 struct dib0700_state *st = d->priv;
 struct urb *purb;
 int ret;


 if (st->fw_version < 0x10200)
  return 0;


 purb = usb_alloc_urb(0, GFP_KERNEL);
 if (purb == ((void*)0)) {
  err("rc usb alloc urb failed\n");
  return -ENOMEM;
 }

 purb->transfer_buffer = kzalloc(RC_MSG_SIZE_V1_20, GFP_KERNEL);
 if (purb->transfer_buffer == ((void*)0)) {
  err("rc kzalloc failed\n");
  usb_free_urb(purb);
  return -ENOMEM;
 }

 purb->status = -EINPROGRESS;
 usb_fill_bulk_urb(purb, d->udev, usb_rcvbulkpipe(d->udev, 1),
     purb->transfer_buffer, RC_MSG_SIZE_V1_20,
     dib0700_rc_urb_completion, d);

 ret = usb_submit_urb(purb, GFP_ATOMIC);
 if (ret)
  err("rc submit urb failed\n");

 return ret;
}
