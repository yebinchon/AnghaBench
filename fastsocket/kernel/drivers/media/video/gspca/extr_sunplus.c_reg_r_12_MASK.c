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
typedef  int u16 ;
struct gspca_dev {int usb_err; int* usb_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct gspca_dev *gspca_dev,
			u8 req,		/* bRequest */
			u16 index,	/* wIndex */
			u16 length)	/* wLength (1 or 2 only) */
{
	int ret;

	if (gspca_dev->usb_err < 0)
		return 0;
	gspca_dev->usb_buf[1] = 0;
	ret = FUNC1(gspca_dev->dev,
			FUNC2(gspca_dev->dev, 0),
			req,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0,		/* value */
			index,
			gspca_dev->usb_buf, length,
			500);
	if (ret < 0) {
		FUNC0("reg_r_12 err %d", ret);
		gspca_dev->usb_err = ret;
		return 0;
	}
	return (gspca_dev->usb_buf[1] << 8) + gspca_dev->usb_buf[0];
}