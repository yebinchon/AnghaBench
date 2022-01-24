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
struct zc0301_device {int state; int /*<<< orphan*/ * transfer_buffer; int /*<<< orphan*/ * urb; struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;
typedef  size_t s8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int DEV_DISCONNECTED ; 
 size_t ZC0301_URBS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct zc0301_device* cam)
{
	struct usb_device *udev = cam->usbdev;
	s8 i;
	int err = 0;

	if (cam->state & DEV_DISCONNECTED)
		return 0;

	for (i = ZC0301_URBS-1; i >= 0; i--) {
		FUNC3(cam->urb[i]);
		FUNC2(cam->urb[i]);
		FUNC1(cam->transfer_buffer[i]);
	}

	err = FUNC4(udev, 0, 0); /* 0 Mb/s */
	if (err)
		FUNC0(3, "usb_set_interface() failed");

	return err;
}