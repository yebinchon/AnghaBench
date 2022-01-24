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
struct gspca_dev {int* usb_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev,
			u16 index)	/* wIndex */
{
	int ret;

	ret = FUNC2(gspca_dev->dev,
			FUNC3(gspca_dev->dev, 0),
			0,			/* register */
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0,		/* value */
			index,
			gspca_dev->usb_buf, 1,
			500);			/* timeout */
	FUNC0(D_USBI, "reg read i:%04x --> %02x",
		index, gspca_dev->usb_buf[0]);
	if (ret < 0) {
		FUNC1("reg_read err %d", ret);
		return ret;
	}
	return gspca_dev->usb_buf[0];
}