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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct zc0301_device {scalar_t__* control_buffer; struct usb_device* usbdev; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ZC0301_CTRL_TIMEOUT ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct zc0301_device* cam, u16 index)
{
	struct usb_device* udev = cam->usbdev;
	u8* buff = cam->control_buffer;
	int res;

	res = FUNC2(udev, FUNC3(udev, 0), 0xa1, 0xc0,
			      0x0001, index, buff, 1, ZC0301_CTRL_TIMEOUT);
	if (res < 0)
		FUNC0(3, "Failed to read a register (index 0x%04X, error %d)",
		    index, res);

	FUNC1("Read: index 0x%04X, value: 0x%04X", index, (int)(*buff));

	return (res >= 0) ? (int)(*buff) : -1;
}