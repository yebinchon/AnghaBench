
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {int hard_mtu; TYPE_6__* udev; struct usb_host_endpoint* status; int data; } ;
struct usb_interface_descriptor {int bNumEndpoints; int bInterfaceClass; } ;
struct usb_interface {int dev; TYPE_3__* cur_altsetting; } ;
struct usb_endpoint_descriptor {int bInterval; int wMaxPacketSize; } ;
struct usb_host_endpoint {int* extra; int extralen; struct usb_endpoint_descriptor desc; } ;
struct usb_driver {int dummy; } ;
struct usb_cdc_notification {int dummy; } ;
struct usb_cdc_acm_descriptor {int bmCapabilities; } ;
struct cdc_state {struct usb_interface* data; struct usb_interface* control; TYPE_1__* ether; TYPE_5__* u; TYPE_4__* header; } ;
struct TYPE_12__ {int dev; TYPE_2__* actconfig; } ;
struct TYPE_11__ {int bLength; int bMasterInterface0; int bSlaveInterface0; } ;
struct TYPE_10__ {int bLength; } ;
struct TYPE_9__ {int* extra; int extralen; struct usb_host_endpoint* endpoint; struct usb_interface_descriptor desc; } ;
struct TYPE_8__ {int extralen; int* extra; } ;
struct TYPE_7__ {int bLength; int wMaxSegmentSize; } ;


 int EDOM ;
 int ENODEV ;




 int USB_CLASS_CDC_DATA ;
 int USB_DT_CS_INTERFACE ;
 int dev_dbg (int *,char*,...) ;
 int dev_info (int *,char*) ;
 struct usb_driver* driver_of (struct usb_interface*) ;
 scalar_t__ is_activesync (struct usb_interface_descriptor*) ;
 scalar_t__ is_rndis (struct usb_interface_descriptor*) ;
 scalar_t__ is_wireless_rndis (struct usb_interface_descriptor*) ;
 int le16_to_cpu (int ) ;
 int memset (struct cdc_state*,int ,int) ;
 int usb_driver_claim_interface (struct usb_driver*,struct usb_interface*,struct usbnet*) ;
 int usb_driver_release_interface (struct usb_driver*,struct usb_interface*) ;
 int usb_endpoint_is_int_in (struct usb_endpoint_descriptor*) ;
 void* usb_ifnum_to_if (TYPE_6__*,int) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

int usbnet_generic_cdc_bind(struct usbnet *dev, struct usb_interface *intf)
{
 u8 *buf = intf->cur_altsetting->extra;
 int len = intf->cur_altsetting->extralen;
 struct usb_interface_descriptor *d;
 struct cdc_state *info = (void *) &dev->data;
 int status;
 int rndis;
 struct usb_driver *driver = driver_of(intf);

 if (sizeof dev->data < sizeof *info)
  return -EDOM;




 if (len == 0 && dev->udev->actconfig->extralen) {



  buf = dev->udev->actconfig->extra;
  len = dev->udev->actconfig->extralen;
  if (len)
   dev_dbg(&intf->dev,
    "CDC descriptors on config\n");
 }




 if (len == 0) {
  struct usb_host_endpoint *hep;

  hep = intf->cur_altsetting->endpoint;
  if (hep) {
   buf = hep->extra;
   len = hep->extralen;
  }
  if (len)
   dev_dbg(&intf->dev,
    "CDC descriptors on endpoint\n");
 }




 rndis = is_rndis(&intf->cur_altsetting->desc)
  || is_activesync(&intf->cur_altsetting->desc)
  || is_wireless_rndis(&intf->cur_altsetting->desc);

 memset(info, 0, sizeof *info);
 info->control = intf;
 while (len > 3) {
  if (buf [1] != USB_DT_CS_INTERFACE)
   goto next_desc;
  switch (buf [2]) {
  case 129:
   if (info->header) {
    dev_dbg(&intf->dev, "extra CDC header\n");
    goto bad_desc;
   }
   info->header = (void *) buf;
   if (info->header->bLength != sizeof *info->header) {
    dev_dbg(&intf->dev, "CDC header len %u\n",
     info->header->bLength);
    goto bad_desc;
   }
   break;
  case 131:



   if (rndis) {
    struct usb_cdc_acm_descriptor *acm;

    acm = (void *) buf;
    if (acm->bmCapabilities) {
     dev_dbg(&intf->dev,
      "ACM capabilities %02x, "
      "not really RNDIS?\n",
      acm->bmCapabilities);
     goto bad_desc;
    }
   }
   break;
  case 128:
   if (info->u) {
    dev_dbg(&intf->dev, "extra CDC union\n");
    goto bad_desc;
   }
   info->u = (void *) buf;
   if (info->u->bLength != sizeof *info->u) {
    dev_dbg(&intf->dev, "CDC union len %u\n",
     info->u->bLength);
    goto bad_desc;
   }





   info->control = usb_ifnum_to_if(dev->udev,
      info->u->bMasterInterface0);
   info->data = usb_ifnum_to_if(dev->udev,
      info->u->bSlaveInterface0);
   if (!info->control || !info->data) {
    dev_dbg(&intf->dev,
     "master #%u/%p slave #%u/%p\n",
     info->u->bMasterInterface0,
     info->control,
     info->u->bSlaveInterface0,
     info->data);
    goto bad_desc;
   }
   if (info->control != intf) {
    dev_dbg(&intf->dev, "bogus CDC Union\n");



    if (info->data == intf) {
     info->data = info->control;
     info->control = intf;
    } else
     goto bad_desc;
   }


   d = &info->data->cur_altsetting->desc;
   if (d->bInterfaceClass != USB_CLASS_CDC_DATA) {
    dev_dbg(&intf->dev, "slave class %u\n",
     d->bInterfaceClass);
    goto bad_desc;
   }
   break;
  case 130:
   if (info->ether) {
    dev_dbg(&intf->dev, "extra CDC ether\n");
    goto bad_desc;
   }
   info->ether = (void *) buf;
   if (info->ether->bLength != sizeof *info->ether) {
    dev_dbg(&intf->dev, "CDC ether len %u\n",
     info->ether->bLength);
    goto bad_desc;
   }
   dev->hard_mtu = le16_to_cpu(
      info->ether->wMaxSegmentSize);



   break;
  }
next_desc:
  len -= buf [0];
  buf += buf [0];
 }





 if (rndis && !info->u) {
  info->control = usb_ifnum_to_if(dev->udev, 0);
  info->data = usb_ifnum_to_if(dev->udev, 1);
  if (!info->control || !info->data) {
   dev_dbg(&intf->dev,
    "rndis: master #0/%p slave #1/%p\n",
    info->control,
    info->data);
   goto bad_desc;
  }

 } else if (!info->header || !info->u || (!rndis && !info->ether)) {
  dev_dbg(&intf->dev, "missing cdc %s%s%sdescriptor\n",
   info->header ? "" : "header ",
   info->u ? "" : "union ",
   info->ether ? "" : "ether ");
  goto bad_desc;
 }




 status = usb_driver_claim_interface(driver, info->data, dev);
 if (status < 0)
  return status;
 status = usbnet_get_endpoints(dev, info->data);
 if (status < 0) {

  usb_set_intfdata(info->data, ((void*)0));
  usb_driver_release_interface(driver, info->data);
  return status;
 }


 dev->status = ((void*)0);
 if (info->control->cur_altsetting->desc.bNumEndpoints == 1) {
  struct usb_endpoint_descriptor *desc;

  dev->status = &info->control->cur_altsetting->endpoint [0];
  desc = &dev->status->desc;
  if (!usb_endpoint_is_int_in(desc)
    || (le16_to_cpu(desc->wMaxPacketSize)
     < sizeof(struct usb_cdc_notification))
    || !desc->bInterval) {
   dev_dbg(&intf->dev, "bad notification endpoint\n");
   dev->status = ((void*)0);
  }
 }
 if (rndis && !dev->status) {
  dev_dbg(&intf->dev, "missing RNDIS status endpoint\n");
  usb_set_intfdata(info->data, ((void*)0));
  usb_driver_release_interface(driver, info->data);
  return -ENODEV;
 }
 return 0;

bad_desc:
 dev_info(&dev->udev->dev, "bad CDC descriptors\n");
 return -ENODEV;
}
