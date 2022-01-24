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
struct TYPE_2__ {scalar_t__ rc_mode; } ;
struct dvb_usb_device {int state; int /*<<< orphan*/  rc_dev; int /*<<< orphan*/  rc_input_dev; TYPE_1__ props; int /*<<< orphan*/  rc_query_work; } ;

/* Variables and functions */
 scalar_t__ DVB_RC_LEGACY ; 
 int DVB_USB_STATE_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct dvb_usb_device *d)
{
	if (d->state & DVB_USB_STATE_REMOTE) {
		FUNC0(&d->rc_query_work);
		FUNC1();
		if (d->props.rc_mode == DVB_RC_LEGACY)
			FUNC2(d->rc_input_dev);
		else
			FUNC3(d->rc_dev);
	}
	d->state &= ~DVB_USB_STATE_REMOTE;
	return 0;
}