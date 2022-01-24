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
struct TYPE_3__ {scalar_t__ rc_codes; } ;
struct TYPE_4__ {scalar_t__ rc_mode; int rc_interval; TYPE_1__ rc_core; scalar_t__ rc_query; scalar_t__ rc_key_map; } ;
struct dvb_usb_device {int /*<<< orphan*/  state; TYPE_2__ props; int /*<<< orphan*/  rc_phys; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 scalar_t__ DVB_RC_CORE ; 
 scalar_t__ DVB_RC_LEGACY ; 
 int /*<<< orphan*/  DVB_USB_STATE_REMOTE ; 
 scalar_t__ dvb_usb_disable_rc_polling ; 
 int FUNC0 (struct dvb_usb_device*) ; 
 int FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct dvb_usb_device *d)
{
	int err;

	if (dvb_usb_disable_rc_polling)
		return 0;

	if (d->props.rc_key_map && d->props.rc_query)
		d->props.rc_mode = DVB_RC_LEGACY;
	else if (d->props.rc_core.rc_codes)
		d->props.rc_mode = DVB_RC_CORE;
	else
		return 0;

	FUNC3(d->udev, d->rc_phys, sizeof(d->rc_phys));
	FUNC2(d->rc_phys, "/ir0", sizeof(d->rc_phys));

	/* Start the remote-control polling. */
	if (d->props.rc_interval < 40)
		d->props.rc_interval = 100; /* default */

	if (d->props.rc_mode == DVB_RC_LEGACY)
		err = FUNC0(d);
	else
		err = FUNC1(d);
	if (err)
		return err;

	d->state |= DVB_USB_STATE_REMOTE;

	return 0;
}