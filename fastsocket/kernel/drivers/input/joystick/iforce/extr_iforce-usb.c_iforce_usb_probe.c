
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct usb_host_interface {TYPE_1__* endpoint; } ;
struct usb_endpoint_descriptor {int bInterval; int bEndpointAddress; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct TYPE_4__ {int bRequestType; int wLength; scalar_t__ wIndex; } ;
struct iforce {void* ctrl; void* out; void* irq; int edata; TYPE_2__ cr; struct iforce* data; struct usb_device* usbdev; int bus; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor desc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IFORCE_USB ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_TYPE_VENDOR ;
 int cpu_to_le16 (int) ;
 int iforce_init_device (struct iforce*) ;
 int iforce_usb_ctrl ;
 int iforce_usb_irq ;
 int iforce_usb_out ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct iforce*) ;
 struct iforce* kzalloc (int,int ) ;
 void* usb_alloc_urb (int ,int ) ;
 int usb_fill_control_urb (void*,struct usb_device*,int ,void*,int ,int,int ,struct iforce*) ;
 int usb_fill_int_urb (void*,struct usb_device*,int ,struct iforce*,int,int ,struct iforce*,int ) ;
 int usb_free_urb (void*) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_rcvintpipe (struct usb_device*,int ) ;
 int usb_set_intfdata (struct usb_interface*,struct iforce*) ;
 int usb_sndintpipe (struct usb_device*,int ) ;

__attribute__((used)) static int iforce_usb_probe(struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct usb_device *dev = interface_to_usbdev(intf);
 struct usb_host_interface *interface;
 struct usb_endpoint_descriptor *epirq, *epout;
 struct iforce *iforce;
 int err = -ENOMEM;

 interface = intf->cur_altsetting;

 epirq = &interface->endpoint[0].desc;
 epout = &interface->endpoint[1].desc;

 if (!(iforce = kzalloc(sizeof(struct iforce) + 32, GFP_KERNEL)))
  goto fail;

 if (!(iforce->irq = usb_alloc_urb(0, GFP_KERNEL)))
  goto fail;

 if (!(iforce->out = usb_alloc_urb(0, GFP_KERNEL)))
  goto fail;

 if (!(iforce->ctrl = usb_alloc_urb(0, GFP_KERNEL)))
  goto fail;

 iforce->bus = IFORCE_USB;
 iforce->usbdev = dev;

 iforce->cr.bRequestType = USB_TYPE_VENDOR | USB_DIR_IN | USB_RECIP_INTERFACE;
 iforce->cr.wIndex = 0;
 iforce->cr.wLength = cpu_to_le16(16);

 usb_fill_int_urb(iforce->irq, dev, usb_rcvintpipe(dev, epirq->bEndpointAddress),
   iforce->data, 16, iforce_usb_irq, iforce, epirq->bInterval);

 usb_fill_int_urb(iforce->out, dev, usb_sndintpipe(dev, epout->bEndpointAddress),
   iforce + 1, 32, iforce_usb_out, iforce, epout->bInterval);

 usb_fill_control_urb(iforce->ctrl, dev, usb_rcvctrlpipe(dev, 0),
   (void*) &iforce->cr, iforce->edata, 16, iforce_usb_ctrl, iforce);

 err = iforce_init_device(iforce);
 if (err)
  goto fail;

 usb_set_intfdata(intf, iforce);
 return 0;

fail:
 if (iforce) {
  usb_free_urb(iforce->irq);
  usb_free_urb(iforce->out);
  usb_free_urb(iforce->ctrl);
  kfree(iforce);
 }

 return err;
}
