#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct usbhid_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  io_retry; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  wait; int /*<<< orphan*/  ifnum; struct usb_interface* intf; struct hid_device* hid; } ;
struct usb_interface {int /*<<< orphan*/  dev; TYPE_4__* altsetting; struct usb_host_interface* cur_altsetting; } ;
struct TYPE_12__ {unsigned int bNumEndpoints; scalar_t__ bInterfaceProtocol; int /*<<< orphan*/  bInterfaceNumber; } ;
struct usb_host_interface {TYPE_6__ desc; TYPE_1__* endpoint; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  iSerialNumber; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {char* product; TYPE_5__ descriptor; scalar_t__ manufacturer; } ;
struct TYPE_8__ {int /*<<< orphan*/ * parent; } ;
struct hid_device {int vendor; int product; struct usbhid_device* driver_data; scalar_t__* uniq; scalar_t__* phys; scalar_t__* name; int /*<<< orphan*/  type; int /*<<< orphan*/  bus; TYPE_2__ dev; int /*<<< orphan*/  hiddev_report_event; int /*<<< orphan*/  hiddev_hid_event; int /*<<< orphan*/  hiddev_disconnect; int /*<<< orphan*/  hiddev_connect; int /*<<< orphan*/  ff_init; int /*<<< orphan*/  hid_output_raw_report; int /*<<< orphan*/ * ll_driver; } ;
struct TYPE_9__ {int bInterfaceNumber; } ;
struct TYPE_10__ {TYPE_3__ desc; } ;
struct TYPE_7__ {int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_USB ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_TYPE_USBMOUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hid_device*) ; 
 int FUNC2 (struct hid_device*) ; 
 scalar_t__ USB_INTERFACE_PROTOCOL_MOUSE ; 
 int /*<<< orphan*/  __usbhid_restart_queues ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (struct hid_device*) ; 
 struct hid_device* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct hid_device*) ; 
 int /*<<< orphan*/  hid_pidff_init ; 
 int /*<<< orphan*/  hid_reset ; 
 int /*<<< orphan*/  hid_retry_timeout ; 
 int /*<<< orphan*/  hiddev_connect ; 
 int /*<<< orphan*/  hiddev_disconnect ; 
 int /*<<< orphan*/  hiddev_hid_event ; 
 int /*<<< orphan*/  hiddev_report_event ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC9 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC10 (struct usbhid_device*) ; 
 struct usbhid_device* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*,scalar_t__,int) ; 
 size_t FUNC18 (scalar_t__*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usb_hid_driver ; 
 int /*<<< orphan*/  FUNC20 (struct usb_device*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_interface*,struct hid_device*) ; 
 scalar_t__ FUNC22 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  usbhid_output_raw_report ; 

__attribute__((used)) static int FUNC23(struct usb_interface *intf, const struct usb_device_id *id)
{
	struct usb_host_interface *interface = intf->cur_altsetting;
	struct usb_device *dev = FUNC9(intf);
	struct usbhid_device *usbhid;
	struct hid_device *hid;
	unsigned int n, has_in = 0;
	size_t len;
	int ret;

	FUNC3("HID probe called for ifnum %d\n",
			intf->altsetting->desc.bInterfaceNumber);

	for (n = 0; n < interface->desc.bNumEndpoints; n++)
		if (FUNC19(&interface->endpoint[n].desc))
			has_in++;
	if (!has_in) {
		FUNC4(&intf->dev, "couldn't find an input interrupt "
				"endpoint\n");
		return -ENODEV;
	}

	hid = FUNC6();
	if (FUNC1(hid))
		return FUNC2(hid);

	FUNC21(intf, hid);
	hid->ll_driver = &usb_hid_driver;
	hid->hid_output_raw_report = usbhid_output_raw_report;
	hid->ff_init = hid_pidff_init;
#ifdef CONFIG_USB_HIDDEV
	hid->hiddev_connect = hiddev_connect;
	hid->hiddev_disconnect = hiddev_disconnect;
	hid->hiddev_hid_event = hiddev_hid_event;
	hid->hiddev_report_event = hiddev_report_event;
#endif
	hid->dev.parent = &intf->dev;
	hid->bus = BUS_USB;
	hid->vendor = FUNC12(dev->descriptor.idVendor);
	hid->product = FUNC12(dev->descriptor.idProduct);
	hid->name[0] = 0;
	if (intf->cur_altsetting->desc.bInterfaceProtocol ==
			USB_INTERFACE_PROTOCOL_MOUSE)
		hid->type = HID_TYPE_USBMOUSE;

	if (dev->manufacturer)
		FUNC17(hid->name, dev->manufacturer, sizeof(hid->name));

	if (dev->product) {
		if (dev->manufacturer)
			FUNC16(hid->name, " ", sizeof(hid->name));
		FUNC16(hid->name, dev->product, sizeof(hid->name));
	}

	if (!FUNC18(hid->name))
		FUNC14(hid->name, sizeof(hid->name), "HID %04x:%04x",
			 FUNC12(dev->descriptor.idVendor),
			 FUNC12(dev->descriptor.idProduct));

	FUNC20(dev, hid->phys, sizeof(hid->phys));
	FUNC16(hid->phys, "/input", sizeof(hid->phys));
	len = FUNC18(hid->phys);
	if (len < sizeof(hid->phys) - 1)
		FUNC14(hid->phys + len, sizeof(hid->phys) - len,
			 "%d", intf->altsetting[0].desc.bInterfaceNumber);

	if (FUNC22(dev, dev->descriptor.iSerialNumber, hid->uniq, 64) <= 0)
		hid->uniq[0] = 0;

	usbhid = FUNC11(sizeof(*usbhid), GFP_KERNEL);
	if (usbhid == NULL) {
		ret = -ENOMEM;
		goto err;
	}

	hid->driver_data = usbhid;
	usbhid->hid = hid;
	usbhid->intf = intf;
	usbhid->ifnum = interface->desc.bInterfaceNumber;

	FUNC8(&usbhid->wait);
	FUNC0(&usbhid->reset_work, hid_reset);
	FUNC0(&usbhid->restart_work, __usbhid_restart_queues);
	FUNC13(&usbhid->io_retry, hid_retry_timeout, (unsigned long) hid);
	FUNC15(&usbhid->lock);

	ret = FUNC5(hid);
	if (ret) {
		if (ret != -ENODEV)
			FUNC4(&intf->dev, "can't add hid device: %d\n", ret);
		goto err_free;
	}

	return 0;
err_free:
	FUNC10(usbhid);
err:
	FUNC7(hid);
	return ret;
}