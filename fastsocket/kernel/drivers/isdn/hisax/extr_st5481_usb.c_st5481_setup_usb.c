
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usb_interface {int dummy; } ;
struct TYPE_4__ {int bNumEndpoints; } ;
struct usb_host_interface {struct usb_host_endpoint* endpoint; TYPE_1__ desc; } ;
struct TYPE_6__ {int bInterval; int bEndpointAddress; void* wMaxPacketSize; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct usb_device {int dummy; } ;
struct urb {int dummy; } ;
struct st5481_intr {struct urb* urb; } ;
struct TYPE_5__ {int data; int f; } ;
struct st5481_ctrl {TYPE_2__ msg_fifo; struct urb* urb; } ;
struct st5481_adapter {struct st5481_intr intr; struct st5481_ctrl ctrl; struct usb_device* usb_dev; } ;


 int ARRAY_SIZE (int ) ;
 int DBG (int,char*) ;
 int EINVAL ;
 int ENOMEM ;
 int ENXIO ;
 int EP_INT ;
 int GFP_KERNEL ;
 int INT_PKT_SIZE ;
 int WARNING (char*,int) ;
 void* __constant_cpu_to_le16 (int) ;
 int fifo_init (int *,int ) ;
 int * kmalloc (int ,int ) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 struct usb_host_interface* usb_altnum_to_altsetting (struct usb_interface*,int) ;
 int usb_ctrl_complete ;
 int usb_fill_control_urb (struct urb*,struct usb_device*,int ,int *,int *,int ,int ,struct st5481_adapter*) ;
 int usb_fill_int_urb (struct urb*,struct usb_device*,int ,int *,int ,int ,struct st5481_adapter*,int ) ;
 struct usb_interface* usb_ifnum_to_if (struct usb_device*,int ) ;
 int usb_int_complete ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_reset_configuration (struct usb_device*) ;
 int usb_set_interface (struct usb_device*,int ,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int st5481_setup_usb(struct st5481_adapter *adapter)
{
 struct usb_device *dev = adapter->usb_dev;
 struct st5481_ctrl *ctrl = &adapter->ctrl;
 struct st5481_intr *intr = &adapter->intr;
 struct usb_interface *intf;
 struct usb_host_interface *altsetting = ((void*)0);
 struct usb_host_endpoint *endpoint;
 int status;
 struct urb *urb;
 u8 *buf;

 DBG(2,"");

 if ((status = usb_reset_configuration (dev)) < 0) {
  WARNING("reset_configuration failed,status=%d",status);
  return status;
 }

 intf = usb_ifnum_to_if(dev, 0);
 if (intf)
  altsetting = usb_altnum_to_altsetting(intf, 3);
 if (!altsetting)
  return -ENXIO;


 if ( altsetting->desc.bNumEndpoints != 7 ) {
  WARNING("expecting 7 got %d endpoints!", altsetting->desc.bNumEndpoints);
  return -EINVAL;
 }


 altsetting->endpoint[3].desc.wMaxPacketSize = __constant_cpu_to_le16(32);
 altsetting->endpoint[4].desc.wMaxPacketSize = __constant_cpu_to_le16(32);


 if ((status = usb_set_interface (dev, 0, 3)) < 0) {
  WARNING("usb_set_interface failed,status=%d",status);
  return status;
 }


 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb) {
  return -ENOMEM;
 }
 ctrl->urb = urb;


 usb_fill_control_urb (urb, dev,
     usb_sndctrlpipe(dev, 0),
     ((void*)0), ((void*)0), 0, usb_ctrl_complete, adapter);


 fifo_init(&ctrl->msg_fifo.f, ARRAY_SIZE(ctrl->msg_fifo.data));


 urb = usb_alloc_urb(0, GFP_KERNEL);
 if (!urb) {
  return -ENOMEM;
 }
 intr->urb = urb;

 buf = kmalloc(INT_PKT_SIZE, GFP_KERNEL);
 if (!buf) {
  return -ENOMEM;
 }

 endpoint = &altsetting->endpoint[EP_INT-1];


 usb_fill_int_urb(urb, dev,
       usb_rcvintpipe(dev, endpoint->desc.bEndpointAddress),
       buf, INT_PKT_SIZE,
       usb_int_complete, adapter,
       endpoint->desc.bInterval);

 return 0;
}
