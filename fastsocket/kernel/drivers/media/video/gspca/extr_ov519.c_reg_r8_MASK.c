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
struct TYPE_2__ {int usb_err; int* usb_buf; int /*<<< orphan*/  dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;

/* Variables and functions */
 int USB_DIR_IN ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct sd *sd,
		  u16 index)
{
	int ret;

	if (sd->gspca_dev.usb_err < 0)
		return -1;

	ret = FUNC1(sd->gspca_dev.dev,
			FUNC2(sd->gspca_dev.dev, 0),
			1,			/* REQ_IO */
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
			0, index, sd->gspca_dev.usb_buf, 8, 500);

	if (ret >= 0) {
		ret = sd->gspca_dev.usb_buf[0];
	} else {
		FUNC0("reg_r8 %02x failed %d", index, ret);
		sd->gspca_dev.usb_err = ret;
	}

	return ret;
}