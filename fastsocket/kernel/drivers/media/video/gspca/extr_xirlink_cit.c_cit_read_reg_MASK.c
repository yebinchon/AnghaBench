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
struct usb_device {int dummy; } ;
struct gspca_dev {int /*<<< orphan*/ * usb_buf; struct usb_device* dev; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  D_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int USB_DIR_IN ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev, u16 index, int verbose)
{
	struct usb_device *udev = gspca_dev->dev;
	__u8 *buf = gspca_dev->usb_buf;
	int res;

	res = FUNC2(udev, FUNC3(udev, 0), 0x01,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_ENDPOINT,
			0x00, index, buf, 8, 1000);
	if (res < 0) {
		FUNC1("Failed to read a register (index 0x%04X, error %d)",
			index, res);
		return res;
	}

	if (verbose)
		FUNC0(D_PROBE, "Register %04x value: %02x", index, buf[0]);

	return 0;
}