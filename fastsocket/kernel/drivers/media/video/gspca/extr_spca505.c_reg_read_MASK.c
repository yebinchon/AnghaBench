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
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gspca_dev *gspca_dev,
			u16 req,	/* bRequest */
			u16 index)	/* wIndex */
{
	int ret;

	ret = FUNC0(gspca_dev->dev,
			FUNC1(gspca_dev->dev, 0),
			req,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0,			/* value */
			index,
			gspca_dev->usb_buf, 2,
			500);			/* timeout */
	if (ret < 0)
		return ret;
	return (gspca_dev->usb_buf[1] << 8) + gspca_dev->usb_buf[0];
}