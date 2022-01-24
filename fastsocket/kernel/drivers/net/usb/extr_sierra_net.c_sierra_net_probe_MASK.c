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
struct usbnet {int dummy; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*) ; 
 struct usbnet* FUNC1 (struct usb_interface*) ; 
 int FUNC2 (struct usb_interface*,struct usb_device_id const*) ; 
 int FUNC3 (struct usbnet*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct usb_interface *udev, const struct usb_device_id *prod)
{
	int ret;

	ret = FUNC2(udev, prod);
	if (ret == 0) {
		struct usbnet *dev = FUNC1(udev);

		ret = FUNC3(dev, GFP_KERNEL);
		if (ret == 0) {
			/* Interrupt URB now set up; initiate sync sequence */
			FUNC0(dev);
		}
	}
	return ret;
}