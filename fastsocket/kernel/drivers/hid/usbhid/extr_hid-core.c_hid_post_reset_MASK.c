#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbhid_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  iofl; } ;
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_RESET_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hid_device*) ; 
 struct usb_device* FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhid_device*) ; 

__attribute__((used)) static int FUNC9(struct usb_interface *intf)
{
	struct usb_device *dev = FUNC4 (intf);
	struct hid_device *hid = FUNC7(intf);
	struct usbhid_device *usbhid = hid->driver_data;
	int status;

	FUNC5(&usbhid->lock);
	FUNC0(HID_RESET_PENDING, &usbhid->iofl);
	FUNC6(&usbhid->lock);
	FUNC2(dev, intf->cur_altsetting->desc.bInterfaceNumber, 0, 0);
	status = FUNC3(hid);
	if (status < 0)
		FUNC1(hid);
	FUNC8(usbhid);

	return 0;
}