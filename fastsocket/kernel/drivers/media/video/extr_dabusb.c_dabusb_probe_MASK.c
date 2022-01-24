#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {size_t minor; TYPE_3__* altsetting; int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_9__ {int bNumConfigurations; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
typedef  TYPE_4__* pdabusb_t ;
struct TYPE_12__ {size_t devnum; struct usb_device* usbdev; int /*<<< orphan*/  mutex; scalar_t__ remove_pending; } ;
struct TYPE_10__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_11__ {TYPE_2__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  _DABUSB_IF ; 
 TYPE_4__* dabusb ; 
 int /*<<< orphan*/  dabusb_class ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct usb_device*) ; 
 scalar_t__ FUNC10 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC12 (struct usb_interface *intf,
			 const struct usb_device_id *id)
{
	struct usb_device *usbdev = FUNC4(intf);
	int retval;
	pdabusb_t s;

	FUNC2("dabusb: probe: vendor id 0x%x, device id 0x%x ifnum:%d",
	    FUNC5(usbdev->descriptor.idVendor),
	    FUNC5(usbdev->descriptor.idProduct),
	    intf->altsetting->desc.bInterfaceNumber);

	/* We don't handle multiple configurations */
	if (usbdev->descriptor.bNumConfigurations != 1)
		return -ENODEV;

	if (intf->altsetting->desc.bInterfaceNumber != _DABUSB_IF &&
	    FUNC5(usbdev->descriptor.idProduct) == 0x9999)
		return -ENODEV;



	s = &dabusb[intf->minor];

	FUNC6(&s->mutex);
	s->remove_pending = 0;
	s->usbdev = usbdev;
	s->devnum = intf->minor;

	if (FUNC9 (usbdev) < 0) {
		FUNC3(&intf->dev, "reset_configuration failed\n");
		goto reject;
	}
	if (FUNC5(usbdev->descriptor.idProduct) == 0x2131) {
		FUNC1 (s, NULL);
		goto reject;
	}
	else {
		FUNC0 (s, NULL);

		if (FUNC10 (s->usbdev, _DABUSB_IF, 0) < 0) {
			FUNC3(&intf->dev, "set_interface failed\n");
			goto reject;
		}
	}
	FUNC2("bound to interface: %d", intf->altsetting->desc.bInterfaceNumber);
	FUNC11 (intf, s);
	FUNC7(&s->mutex);

	retval = FUNC8(intf, &dabusb_class);
	if (retval) {
		FUNC11 (intf, NULL);
		return -ENOMEM;
	}

	return 0;

      reject:
	FUNC7(&s->mutex);
	s->usbdev = NULL;
	return -ENODEV;
}