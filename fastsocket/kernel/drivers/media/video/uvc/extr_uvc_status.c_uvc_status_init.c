
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uvc_device {int quirks; int * status; TYPE_2__* udev; int * int_urb; struct usb_host_endpoint* int_ep; } ;
struct TYPE_4__ {int bInterval; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_1__ desc; } ;
struct TYPE_5__ {scalar_t__ speed; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ USB_SPEED_HIGH ;
 int UVC_MAX_STATUS_SIZE ;
 int UVC_QUIRK_STATUS_INTERVAL ;
 int fls (int) ;
 int kfree (int *) ;
 int * kzalloc (int ,int ) ;
 int * usb_alloc_urb (int ,int ) ;
 int usb_fill_int_urb (int *,TYPE_2__*,unsigned int,int *,int ,int ,struct uvc_device*,int) ;
 unsigned int usb_rcvintpipe (TYPE_2__*,int ) ;
 int uvc_input_init (struct uvc_device*) ;
 int uvc_status_complete ;

int uvc_status_init(struct uvc_device *dev)
{
 struct usb_host_endpoint *ep = dev->int_ep;
 unsigned int pipe;
 int interval;

 if (ep == ((void*)0))
  return 0;

 uvc_input_init(dev);

 dev->status = kzalloc(UVC_MAX_STATUS_SIZE, GFP_KERNEL);
 if (dev->status == ((void*)0))
  return -ENOMEM;

 dev->int_urb = usb_alloc_urb(0, GFP_KERNEL);
 if (dev->int_urb == ((void*)0)) {
  kfree(dev->status);
  return -ENOMEM;
 }

 pipe = usb_rcvintpipe(dev->udev, ep->desc.bEndpointAddress);




 interval = ep->desc.bInterval;
 if (interval > 16 && dev->udev->speed == USB_SPEED_HIGH &&
     (dev->quirks & UVC_QUIRK_STATUS_INTERVAL))
  interval = fls(interval) - 1;

 usb_fill_int_urb(dev->int_urb, dev->udev, pipe,
  dev->status, UVC_MAX_STATUS_SIZE, uvc_status_complete,
  dev, interval);

 return 0;
}
