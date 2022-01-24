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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int /*<<< orphan*/  usb_buf; struct usb_device* dev; } ;

/* Variables and functions */
 int EIO ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev, u16 reg,
		 const u8 *buffer, int length)
{
	struct usb_device *dev = gspca_dev->dev;
	int result;
	FUNC1(gspca_dev->usb_buf, buffer, length);
	result = FUNC3(dev, FUNC4(dev, 0),
			0x08,
			USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			reg,
			0x00,
			gspca_dev->usb_buf,
			length,
			500);
	if (FUNC2(result < 0 || result != length)) {
		FUNC0("Write register failed index 0x%02X", reg);
		return -EIO;
	}
	return 0;
}