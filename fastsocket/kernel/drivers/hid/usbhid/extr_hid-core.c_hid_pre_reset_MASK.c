#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usbhid_device {int /*<<< orphan*/  restart_work; int /*<<< orphan*/  lock; int /*<<< orphan*/  iofl; } ;
struct usb_interface {int dummy; } ;
struct hid_device {struct usbhid_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_RESET_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbhid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct hid_device *hid = FUNC5(intf);
	struct usbhid_device *usbhid = hid->driver_data;

	FUNC3(&usbhid->lock);
	FUNC2(HID_RESET_PENDING, &usbhid->iofl);
	FUNC4(&usbhid->lock);
	FUNC0(&usbhid->restart_work);
	FUNC1(usbhid);

	return 0;
}