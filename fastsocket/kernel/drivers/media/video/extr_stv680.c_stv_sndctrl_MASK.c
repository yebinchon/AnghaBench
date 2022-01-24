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
struct usb_stv {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,unsigned short,int) ; 
 int /*<<< orphan*/  PENCAM_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_TYPE_VENDOR ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short,int,unsigned short,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4 (int set, struct usb_stv *stv680, unsigned short req, unsigned short value, unsigned char *buffer, int size)
{
	int ret = -1;

	switch (set) {
	case 0:		/*  0xc1  */
		ret = FUNC1 (stv680->udev,
				       FUNC2 (stv680->udev, 0),
				       req,
				       (USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT),
				       value, 0, buffer, size, PENCAM_TIMEOUT);
		break;

	case 1:		/*  0x41  */
		ret = FUNC1 (stv680->udev,
				       FUNC3 (stv680->udev, 0),
				       req,
				       (USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT),
				       value, 0, buffer, size, PENCAM_TIMEOUT);
		break;

	case 2:		/*  0x80  */
		ret = FUNC1 (stv680->udev,
				       FUNC2 (stv680->udev, 0),
				       req,
				       (USB_DIR_IN | USB_RECIP_DEVICE),
				       value, 0, buffer, size, PENCAM_TIMEOUT);
		break;

	case 3:		/*  0x40  */
		ret = FUNC1 (stv680->udev,
				       FUNC3 (stv680->udev, 0),
				       req,
				       (USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE),
				       value, 0, buffer, size, PENCAM_TIMEOUT);
		break;

	}
	if ((ret < 0) && (req != 0x0a)) {
		FUNC0 (1, "STV(e): usb_control_msg error %i, request = 0x%x, error = %i", set, req, ret);
	}
	return ret;
}