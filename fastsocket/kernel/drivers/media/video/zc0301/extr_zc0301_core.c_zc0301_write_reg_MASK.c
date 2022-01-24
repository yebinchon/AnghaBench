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
typedef  int /*<<< orphan*/  u16 ;
struct zc0301_device {struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZC0301_CTRL_TIMEOUT ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC3(struct zc0301_device* cam, u16 index, u16 value)
{
	struct usb_device* udev = cam->usbdev;
	int res;

	res = FUNC1(udev, FUNC2(udev, 0), 0xa0, 0x40,
			      value, index, NULL, 0, ZC0301_CTRL_TIMEOUT);
	if (res < 0) {
		FUNC0(3, "Failed to write a register (index 0x%04X, "
		       "value 0x%02X, error %d)",index, value, res);
		return -1;
	}

	return 0;
}