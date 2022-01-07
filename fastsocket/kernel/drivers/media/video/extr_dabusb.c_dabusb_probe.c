
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct usb_interface {size_t minor; TYPE_3__* altsetting; int dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_9__ {int bNumConfigurations; int idProduct; int idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
typedef TYPE_4__* pdabusb_t ;
struct TYPE_12__ {size_t devnum; struct usb_device* usbdev; int mutex; scalar_t__ remove_pending; } ;
struct TYPE_10__ {int bInterfaceNumber; } ;
struct TYPE_11__ {TYPE_2__ desc; } ;


 int ENODEV ;
 int ENOMEM ;
 int _DABUSB_IF ;
 TYPE_4__* dabusb ;
 int dabusb_class ;
 int dabusb_fpga_download (TYPE_4__*,int *) ;
 int dabusb_loadmem (TYPE_4__*,int *) ;
 int dbg (char*,int,...) ;
 int dev_err (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_register_dev (struct usb_interface*,int *) ;
 scalar_t__ usb_reset_configuration (struct usb_device*) ;
 scalar_t__ usb_set_interface (struct usb_device*,int ,int ) ;
 int usb_set_intfdata (struct usb_interface*,TYPE_4__*) ;

__attribute__((used)) static int dabusb_probe (struct usb_interface *intf,
    const struct usb_device_id *id)
{
 struct usb_device *usbdev = interface_to_usbdev(intf);
 int retval;
 pdabusb_t s;

 dbg("dabusb: probe: vendor id 0x%x, device id 0x%x ifnum:%d",
     le16_to_cpu(usbdev->descriptor.idVendor),
     le16_to_cpu(usbdev->descriptor.idProduct),
     intf->altsetting->desc.bInterfaceNumber);


 if (usbdev->descriptor.bNumConfigurations != 1)
  return -ENODEV;

 if (intf->altsetting->desc.bInterfaceNumber != _DABUSB_IF &&
     le16_to_cpu(usbdev->descriptor.idProduct) == 0x9999)
  return -ENODEV;



 s = &dabusb[intf->minor];

 mutex_lock(&s->mutex);
 s->remove_pending = 0;
 s->usbdev = usbdev;
 s->devnum = intf->minor;

 if (usb_reset_configuration (usbdev) < 0) {
  dev_err(&intf->dev, "reset_configuration failed\n");
  goto reject;
 }
 if (le16_to_cpu(usbdev->descriptor.idProduct) == 0x2131) {
  dabusb_loadmem (s, ((void*)0));
  goto reject;
 }
 else {
  dabusb_fpga_download (s, ((void*)0));

  if (usb_set_interface (s->usbdev, _DABUSB_IF, 0) < 0) {
   dev_err(&intf->dev, "set_interface failed\n");
   goto reject;
  }
 }
 dbg("bound to interface: %d", intf->altsetting->desc.bInterfaceNumber);
 usb_set_intfdata (intf, s);
 mutex_unlock(&s->mutex);

 retval = usb_register_dev(intf, &dabusb_class);
 if (retval) {
  usb_set_intfdata (intf, ((void*)0));
  return -ENOMEM;
 }

 return 0;

      reject:
 mutex_unlock(&s->mutex);
 s->usbdev = ((void*)0);
 return -ENODEV;
}
