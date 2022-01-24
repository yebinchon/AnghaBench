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
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/  (*) (char*,int,int)) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d, u8 *tx, u8 txlen)
{
	int status;

	FUNC0(">>> ");
	FUNC1(tx, txlen, deb_data);

	status = FUNC2(d->udev, FUNC3(d->udev,0),
		tx[0], USB_TYPE_VENDOR | USB_DIR_OUT, 0, 0, tx, txlen,
		USB_CTRL_GET_TIMEOUT);

	if (status != txlen)
		FUNC0("ep 0 write error (status = %d, len: %d)\n",status,txlen);

	return status < 0 ? status : 0;
}