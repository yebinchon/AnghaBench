#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct dvb_usb_device {TYPE_2__* udev; } ;
struct TYPE_3__ {int /*<<< orphan*/  idProduct; } ;
struct TYPE_4__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_TRANSFER ; 
 int /*<<< orphan*/  BOOT_8PSK ; 
 int /*<<< orphan*/  CW3K_INIT ; 
 int EINVAL ; 
 int /*<<< orphan*/  GET_8PSK_CONFIG ; 
 int /*<<< orphan*/  SET_DVB_MODE ; 
 int /*<<< orphan*/  START_INTERSIL ; 
 int USB_PID_GENPIX_8PSK_REV_1_WARM ; 
 int USB_PID_GENPIX_SKYWALKER_CW3K ; 
 int bm8pskFW_Loaded ; 
 int bm8pskStarted ; 
 int bmIntersilOn ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*) ; 
 scalar_t__ FUNC1 (struct dvb_usb_device*) ; 
 scalar_t__ FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC3 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, int onoff)
{
	u8 status, buf;
	int gp_product_id = FUNC4(d->udev->descriptor.idProduct);

	if (onoff) {
		FUNC2(d, GET_8PSK_CONFIG,0,0,&status,1);
		if (! (status & bm8pskStarted)) {  /* started */
			if(gp_product_id == USB_PID_GENPIX_SKYWALKER_CW3K)
				FUNC3(d, CW3K_INIT, 1, 0, NULL, 0);
			if (FUNC2(d, BOOT_8PSK, 1, 0, &buf, 1))
				return -EINVAL;
			FUNC0(d);
		}

		if (gp_product_id == USB_PID_GENPIX_8PSK_REV_1_WARM)
			if (! (status & bm8pskFW_Loaded)) /* BCM4500 firmware loaded */
				if(FUNC1(d))
					return -EINVAL;

		if (! (status & bmIntersilOn)) /* LNB Power */
			if (FUNC2(d, START_INTERSIL, 1, 0,
					&buf, 1))
				return -EINVAL;

		/* Set DVB mode to 1 */
		if (gp_product_id == USB_PID_GENPIX_8PSK_REV_1_WARM)
			if (FUNC3(d, SET_DVB_MODE, 1, 0, NULL, 0))
				return -EINVAL;
		/* Abort possible TS (if previous tune crashed) */
		if (FUNC3(d, ARM_TRANSFER, 0, 0, NULL, 0))
			return -EINVAL;
	} else {
		/* Turn off LNB power */
		if (FUNC2(d, START_INTERSIL, 0, 0, &buf, 1))
			return -EINVAL;
		/* Turn off 8psk power */
		if (FUNC2(d, BOOT_8PSK, 0, 0, &buf, 1))
			return -EINVAL;
		if(gp_product_id == USB_PID_GENPIX_SKYWALKER_CW3K)
			FUNC3(d, CW3K_INIT, 0, 0, NULL, 0);
	}
	return 0;
}