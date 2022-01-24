#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int usb_err; int /*<<< orphan*/  usb_buf; struct usb_device* dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sd *sd, u16* data)
{
	struct usb_device *udev = sd->gspca_dev.dev;
	u16 value;
	int ret;

	if (sd->gspca_dev.usb_err < 0)
		return;

	value = *data++;
	FUNC1(sd->gspca_dev.usb_buf, data, 6);

	ret = FUNC2(udev, FUNC3(udev, 0), 0,
			      USB_TYPE_VENDOR | USB_DIR_OUT | USB_RECIP_DEVICE,
			      value, 0x06, sd->gspca_dev.usb_buf, 6, 500);
	if (ret < 0) {
		FUNC0("Write FSB registers failed (%d)", ret);
		sd->gspca_dev.usb_err = ret;
	}
}