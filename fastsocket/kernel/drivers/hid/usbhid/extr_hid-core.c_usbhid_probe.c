
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


struct usbhid_device {int lock; int io_retry; int restart_work; int reset_work; int wait; int ifnum; struct usb_interface* intf; struct hid_device* hid; } ;
struct usb_interface {int dev; TYPE_4__* altsetting; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_12__ {unsigned int bNumEndpoints; scalar_t__ bInterfaceProtocol; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_6__ desc; TYPE_1__* endpoint; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_11__ {int iSerialNumber; int idProduct; int idVendor; } ;
struct usb_device {char* product; TYPE_5__ descriptor; scalar_t__ manufacturer; } ;
struct TYPE_8__ {int * parent; } ;
struct hid_device {int vendor; int product; struct usbhid_device* driver_data; scalar_t__* uniq; scalar_t__* phys; scalar_t__* name; int type; int bus; TYPE_2__ dev; int hiddev_report_event; int hiddev_hid_event; int hiddev_disconnect; int hiddev_connect; int ff_init; int hid_output_raw_report; int * ll_driver; } ;
struct TYPE_9__ {int bInterfaceNumber; } ;
struct TYPE_10__ {TYPE_3__ desc; } ;
struct TYPE_7__ {int desc; } ;


 int BUS_USB ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_TYPE_USBMOUSE ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (struct hid_device*) ;
 int PTR_ERR (struct hid_device*) ;
 scalar_t__ USB_INTERFACE_PROTOCOL_MOUSE ;
 int __usbhid_restart_queues ;
 int dbg_hid (char*,int) ;
 int dev_err (int *,char*,...) ;
 int hid_add_device (struct hid_device*) ;
 struct hid_device* hid_allocate_device () ;
 int hid_destroy_device (struct hid_device*) ;
 int hid_pidff_init ;
 int hid_reset ;
 int hid_retry_timeout ;
 int hiddev_connect ;
 int hiddev_disconnect ;
 int hiddev_hid_event ;
 int hiddev_report_event ;
 int init_waitqueue_head (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct usbhid_device*) ;
 struct usbhid_device* kzalloc (int,int ) ;
 int le16_to_cpu (int ) ;
 int setup_timer (int *,int ,unsigned long) ;
 int snprintf (scalar_t__*,int,char*,int,...) ;
 int spin_lock_init (int *) ;
 int strlcat (scalar_t__*,char*,int) ;
 int strlcpy (scalar_t__*,scalar_t__,int) ;
 size_t strlen (scalar_t__*) ;
 scalar_t__ usb_endpoint_is_int_in (int *) ;
 int usb_hid_driver ;
 int usb_make_path (struct usb_device*,scalar_t__*,int) ;
 int usb_set_intfdata (struct usb_interface*,struct hid_device*) ;
 scalar_t__ usb_string (struct usb_device*,int ,scalar_t__*,int) ;
 int usbhid_output_raw_report ;

__attribute__((used)) static int usbhid_probe(struct usb_interface *intf, const struct usb_device_id *id)
{
 struct usb_host_interface *interface = intf->cur_altsetting;
 struct usb_device *dev = interface_to_usbdev(intf);
 struct usbhid_device *usbhid;
 struct hid_device *hid;
 unsigned int n, has_in = 0;
 size_t len;
 int ret;

 dbg_hid("HID probe called for ifnum %d\n",
   intf->altsetting->desc.bInterfaceNumber);

 for (n = 0; n < interface->desc.bNumEndpoints; n++)
  if (usb_endpoint_is_int_in(&interface->endpoint[n].desc))
   has_in++;
 if (!has_in) {
  dev_err(&intf->dev, "couldn't find an input interrupt "
    "endpoint\n");
  return -ENODEV;
 }

 hid = hid_allocate_device();
 if (IS_ERR(hid))
  return PTR_ERR(hid);

 usb_set_intfdata(intf, hid);
 hid->ll_driver = &usb_hid_driver;
 hid->hid_output_raw_report = usbhid_output_raw_report;
 hid->ff_init = hid_pidff_init;






 hid->dev.parent = &intf->dev;
 hid->bus = BUS_USB;
 hid->vendor = le16_to_cpu(dev->descriptor.idVendor);
 hid->product = le16_to_cpu(dev->descriptor.idProduct);
 hid->name[0] = 0;
 if (intf->cur_altsetting->desc.bInterfaceProtocol ==
   USB_INTERFACE_PROTOCOL_MOUSE)
  hid->type = HID_TYPE_USBMOUSE;

 if (dev->manufacturer)
  strlcpy(hid->name, dev->manufacturer, sizeof(hid->name));

 if (dev->product) {
  if (dev->manufacturer)
   strlcat(hid->name, " ", sizeof(hid->name));
  strlcat(hid->name, dev->product, sizeof(hid->name));
 }

 if (!strlen(hid->name))
  snprintf(hid->name, sizeof(hid->name), "HID %04x:%04x",
    le16_to_cpu(dev->descriptor.idVendor),
    le16_to_cpu(dev->descriptor.idProduct));

 usb_make_path(dev, hid->phys, sizeof(hid->phys));
 strlcat(hid->phys, "/input", sizeof(hid->phys));
 len = strlen(hid->phys);
 if (len < sizeof(hid->phys) - 1)
  snprintf(hid->phys + len, sizeof(hid->phys) - len,
    "%d", intf->altsetting[0].desc.bInterfaceNumber);

 if (usb_string(dev, dev->descriptor.iSerialNumber, hid->uniq, 64) <= 0)
  hid->uniq[0] = 0;

 usbhid = kzalloc(sizeof(*usbhid), GFP_KERNEL);
 if (usbhid == ((void*)0)) {
  ret = -ENOMEM;
  goto err;
 }

 hid->driver_data = usbhid;
 usbhid->hid = hid;
 usbhid->intf = intf;
 usbhid->ifnum = interface->desc.bInterfaceNumber;

 init_waitqueue_head(&usbhid->wait);
 INIT_WORK(&usbhid->reset_work, hid_reset);
 INIT_WORK(&usbhid->restart_work, __usbhid_restart_queues);
 setup_timer(&usbhid->io_retry, hid_retry_timeout, (unsigned long) hid);
 spin_lock_init(&usbhid->lock);

 ret = hid_add_device(hid);
 if (ret) {
  if (ret != -ENODEV)
   dev_err(&intf->dev, "can't add hid device: %d\n", ret);
  goto err_free;
 }

 return 0;
err_free:
 kfree(usbhid);
err:
 hid_destroy_device(hid);
 return ret;
}
