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
typedef  int u8 ;
typedef  int u16 ;
struct cx231xx {int state; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int DEV_DISCONNECTED ; 
 int EINVAL ; 
 int ENABLE_FOUR_BYTE ; 
 int ENABLE_ONE_BYTE ; 
 int ENABLE_THREE_BYTE ; 
 int ENABLE_TWE_BYTE ; 
 int ENODEV ; 
 int /*<<< orphan*/  HZ ; 
 int URB_MAX_CTRL_SIZE ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (struct cx231xx*,int,int,int,int,int,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ reg_debug ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct cx231xx *dev, u8 req, u16 reg, char *buf,
			   int len)
{
	u8 val = 0;
	int ret;
	int pipe = FUNC2(dev->udev, 0);

	if (dev->state & DEV_DISCONNECTED)
		return -ENODEV;

	if ((len < 1) || (len > URB_MAX_CTRL_SIZE))
		return -EINVAL;

	switch (len) {
	case 1:
		val = ENABLE_ONE_BYTE;
		break;
	case 2:
		val = ENABLE_TWE_BYTE;
		break;
	case 3:
		val = ENABLE_THREE_BYTE;
		break;
	case 4:
		val = ENABLE_FOUR_BYTE;
		break;
	default:
		val = 0xFF;	/* invalid option */
	}

	if (val == 0xFF)
		return -EINVAL;

	if (reg_debug) {
		int byte;

		FUNC1("(pipe 0x%08x): "
			"OUT: %02x %02x %02x %02x %02x %02x %02x %02x >>>",
			pipe,
			USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			req, 0, val, reg & 0xff,
			reg >> 8, len & 0xff, len >> 8);

		for (byte = 0; byte < len; byte++)
			FUNC1(" %02x", (unsigned char)buf[byte]);
		FUNC1("\n");
	}

	ret = FUNC0(dev, pipe, req,
			      USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			      val, reg, buf, len, HZ);

	return ret;
}