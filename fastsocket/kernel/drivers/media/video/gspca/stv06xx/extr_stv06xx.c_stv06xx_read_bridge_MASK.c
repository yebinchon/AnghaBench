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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * usb_buf; struct usb_device* dev; } ;
struct sd {TYPE_1__ gspca_dev; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  D_CONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STV06XX_URB_MSG_TIMEOUT ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC3(struct sd *sd, u16 address, u8 *i2c_data)
{
	int err;
	struct usb_device *udev = sd->gspca_dev.dev;
	__u8 *buf = sd->gspca_dev.usb_buf;

	err = FUNC1(udev, FUNC2(udev, 0),
			      0x04, 0xc0, address, 0, buf, 1,
			      STV06XX_URB_MSG_TIMEOUT);

	*i2c_data = buf[0];

	FUNC0(D_CONF, "Reading 0x%x from address 0x%x, status %d",
	       *i2c_data, address, err);

	return (err < 0) ? err : 0;
}