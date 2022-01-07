
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usbnet {struct usb_host_endpoint* status; int udev; int out; int in; TYPE_1__* driver_info; } ;
struct usb_interface {int num_altsetting; struct usb_host_interface* altsetting; } ;
struct TYPE_5__ {unsigned int bNumEndpoints; scalar_t__ bAlternateSetting; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; struct usb_host_endpoint* endpoint; } ;
struct TYPE_6__ {int bmAttributes; int bEndpointAddress; } ;
struct usb_host_endpoint {TYPE_3__ desc; } ;
struct TYPE_4__ {int flags; } ;


 int EINVAL ;
 int FLAG_NO_SETINT ;
 int USB_ENDPOINT_NUMBER_MASK ;


 scalar_t__ usb_endpoint_dir_in (TYPE_3__*) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_set_interface (int ,int ,scalar_t__) ;
 int usb_sndbulkpipe (int ,int) ;

int usbnet_get_endpoints(struct usbnet *dev, struct usb_interface *intf)
{
 int tmp;
 struct usb_host_interface *alt = ((void*)0);
 struct usb_host_endpoint *in = ((void*)0), *out = ((void*)0);
 struct usb_host_endpoint *status = ((void*)0);

 for (tmp = 0; tmp < intf->num_altsetting; tmp++) {
  unsigned ep;

  in = out = status = ((void*)0);
  alt = intf->altsetting + tmp;





  for (ep = 0; ep < alt->desc.bNumEndpoints; ep++) {
   struct usb_host_endpoint *e;
   int intr = 0;

   e = alt->endpoint + ep;
   switch (e->desc.bmAttributes) {
   case 128:
    if (!usb_endpoint_dir_in(&e->desc))
     continue;
    intr = 1;

   case 129:
    break;
   default:
    continue;
   }
   if (usb_endpoint_dir_in(&e->desc)) {
    if (!intr && !in)
     in = e;
    else if (intr && !status)
     status = e;
   } else {
    if (!out)
     out = e;
   }
  }
  if (in && out)
   break;
 }
 if (!alt || !in || !out)
  return -EINVAL;

 if (alt->desc.bAlternateSetting != 0 ||
     !(dev->driver_info->flags & FLAG_NO_SETINT)) {
  tmp = usb_set_interface (dev->udev, alt->desc.bInterfaceNumber,
    alt->desc.bAlternateSetting);
  if (tmp < 0)
   return tmp;
 }

 dev->in = usb_rcvbulkpipe (dev->udev,
   in->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
 dev->out = usb_sndbulkpipe (dev->udev,
   out->desc.bEndpointAddress & USB_ENDPOINT_NUMBER_MASK);
 dev->status = status;
 return 0;
}
