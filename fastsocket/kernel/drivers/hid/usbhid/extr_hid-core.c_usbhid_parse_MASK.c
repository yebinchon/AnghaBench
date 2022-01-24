#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_8__ {scalar_t__ bInterfaceSubClass; scalar_t__ bInterfaceProtocol; int /*<<< orphan*/  bInterfaceNumber; int /*<<< orphan*/  bNumEndpoints; } ;
struct usb_host_interface {TYPE_4__ desc; struct usb_host_interface* endpoint; } ;
struct TYPE_6__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_2__ descriptor; } ;
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct hid_device {int quirks; int /*<<< orphan*/  country; void* version; TYPE_1__ dev; } ;
struct hid_descriptor {int bNumDescriptors; TYPE_3__* desc; int /*<<< orphan*/  bCountryCode; int /*<<< orphan*/  bcdHID; } ;
struct TYPE_7__ {scalar_t__ bDescriptorType; int /*<<< orphan*/  wDescriptorLength; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_DT_HID ; 
 scalar_t__ HID_DT_REPORT ; 
 unsigned int HID_MAX_DESCRIPTOR_SIZE ; 
 int HID_QUIRK_IGNORE ; 
 int HID_QUIRK_NOGET ; 
 scalar_t__ USB_INTERFACE_PROTOCOL_KEYBOARD ; 
 scalar_t__ USB_INTERFACE_PROTOCOL_MOUSE ; 
 scalar_t__ USB_INTERFACE_SUBCLASS_BOOT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,scalar_t__,char*,unsigned int) ; 
 int FUNC2 (struct hid_device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 struct usb_interface* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct usb_host_interface*,int /*<<< orphan*/ ,struct hid_descriptor**) ; 
 int FUNC10 (void*,void*) ; 

__attribute__((used)) static int FUNC11(struct hid_device *hid)
{
	struct usb_interface *intf = FUNC8(hid->dev.parent);
	struct usb_host_interface *interface = intf->cur_altsetting;
	struct usb_device *dev = FUNC4 (intf);
	struct hid_descriptor *hdesc;
	u32 quirks = 0;
	unsigned int rsize = 0;
	char *rdesc;
	int ret, n;

	quirks = FUNC10(FUNC7(dev->descriptor.idVendor),
			FUNC7(dev->descriptor.idProduct));

	if (quirks & HID_QUIRK_IGNORE)
		return -ENODEV;

	/* Many keyboards and mice don't like to be polled for reports,
	 * so we will always set the HID_QUIRK_NOGET flag for them. */
	if (interface->desc.bInterfaceSubClass == USB_INTERFACE_SUBCLASS_BOOT) {
		if (interface->desc.bInterfaceProtocol == USB_INTERFACE_PROTOCOL_KEYBOARD ||
			interface->desc.bInterfaceProtocol == USB_INTERFACE_PROTOCOL_MOUSE)
				quirks |= HID_QUIRK_NOGET;
	}

	if (FUNC9(interface, HID_DT_HID, &hdesc) &&
	    (!interface->desc.bNumEndpoints ||
	     FUNC9(&interface->endpoint[0], HID_DT_HID, &hdesc))) {
		FUNC0("class descriptor not present\n");
		return -ENODEV;
	}

	hid->version = FUNC7(hdesc->bcdHID);
	hid->country = hdesc->bCountryCode;

	for (n = 0; n < hdesc->bNumDescriptors; n++)
		if (hdesc->desc[n].bDescriptorType == HID_DT_REPORT)
			rsize = FUNC7(hdesc->desc[n].wDescriptorLength);

	if (!rsize || rsize > HID_MAX_DESCRIPTOR_SIZE) {
		FUNC0("weird size of report descriptor (%u)\n", rsize);
		return -EINVAL;
	}

	if (!(rdesc = FUNC6(rsize, GFP_KERNEL))) {
		FUNC0("couldn't allocate rdesc memory\n");
		return -ENOMEM;
	}

	FUNC3(dev, interface->desc.bInterfaceNumber, 0, 0);

	ret = FUNC1(dev, interface->desc.bInterfaceNumber,
			HID_DT_REPORT, rdesc, rsize);
	if (ret < 0) {
		FUNC0("reading report descriptor failed\n");
		FUNC5(rdesc);
		goto err;
	}

	ret = FUNC2(hid, rdesc, rsize);
	FUNC5(rdesc);
	if (ret) {
		FUNC0("parsing report descriptor failed\n");
		goto err;
	}

	hid->quirks |= quirks;

	return 0;
err:
	return ret;
}