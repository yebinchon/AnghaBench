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
typedef  size_t u8 ;
struct usb_device {int dummy; } ;
struct sn9c102_device {size_t* control_buffer; size_t* reg; struct usb_device* usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,size_t,size_t,int) ; 
 int /*<<< orphan*/  SN9C102_CTRL_TIMEOUT ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int,int,size_t,int /*<<< orphan*/ ,size_t*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC3(struct sn9c102_device* cam, const u8 valreg[][2],
		       int count)
{
	struct usb_device* udev = cam->usbdev;
	u8* buff = cam->control_buffer;
	int i, res;

	for (i = 0; i < count; i++) {
		u8 index = valreg[i][1];

		/*
		   index is a u8, so it must be <256 and can't be out of range.
		   If we put in a check anyway, gcc annoys us with a warning
		   hat our check is useless. People get all uppity when they
		   see warnings in the kernel compile.
		*/

		*buff = valreg[i][0];

		res = FUNC1(udev, FUNC2(udev, 0), 0x08,
				      0x41, index, 0, buff, 1,
				      SN9C102_CTRL_TIMEOUT);

		if (res < 0) {
			FUNC0(3, "Failed to write a register (value 0x%02X, "
			       "index 0x%02X, error %d)", *buff, index, res);
			return -1;
		}

		cam->reg[index] = *buff;
	}

	return 0;
}