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
struct usb_interface {TYPE_2__* cur_altsetting; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {scalar_t__ speed; } ;
struct TYPE_3__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  adapter_nr ; 
 scalar_t__ FUNC0 (struct usb_interface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  lme2510_properties ; 
 int /*<<< orphan*/  lme2510c_properties ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 
 int FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct usb_interface *intf,
		const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC2(intf);
	int ret = 0;

	FUNC4(udev);

	FUNC6(udev, intf->cur_altsetting->desc.bInterfaceNumber, 1);

	if (udev->speed != USB_SPEED_HIGH) {
		ret = FUNC5(udev);
		FUNC1("DEV Failed to connect in HIGH SPEED mode");
		return -ENODEV;
	}

	FUNC3(udev, 0);

	if (0 == FUNC0(intf, &lme2510_properties,
				     THIS_MODULE, NULL, adapter_nr)) {
		FUNC1("DEV registering device driver");
		return 0;
	}
	if (0 == FUNC0(intf, &lme2510c_properties,
				     THIS_MODULE, NULL, adapter_nr)) {
		FUNC1("DEV registering device driver");
		return 0;
	}

	FUNC1("DEV lme2510 Error");
	return -ENODEV;

}