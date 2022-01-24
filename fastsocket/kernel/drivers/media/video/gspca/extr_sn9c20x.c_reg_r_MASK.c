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
typedef  int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int /*<<< orphan*/  usb_buf; struct usb_device* dev; } ;

/* Variables and functions */
 int EIO ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev, u16 reg, u16 length)
{
	struct usb_device *dev = gspca_dev->dev;
	int result;
	result = FUNC2(dev, FUNC3(dev, 0),
			0x00,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			reg,
			0x00,
			gspca_dev->usb_buf,
			length,
			500);
	if (FUNC1(result < 0 || result != length)) {
		FUNC0("Read register failed 0x%02X", reg);
		return -EIO;
	}
	return 0;
}