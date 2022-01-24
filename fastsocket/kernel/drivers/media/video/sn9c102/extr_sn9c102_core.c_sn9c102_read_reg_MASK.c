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
struct usb_device {int dummy; } ;
struct sn9c102_device {scalar_t__* control_buffer; struct usb_device* usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SN9C102_CTRL_TIMEOUT ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC3(struct sn9c102_device* cam, u16 index)
{
	struct usb_device* udev = cam->usbdev;
	u8* buff = cam->control_buffer;
	int res;

	res = FUNC1(udev, FUNC2(udev, 0), 0x00, 0xc1,
			      index, 0, buff, 1, SN9C102_CTRL_TIMEOUT);
	if (res < 0)
		FUNC0(3, "Failed to read a register (index 0x%02X, error %d)",
		    index, res);

	return (res >= 0) ? (int)(*buff) : -1;
}