#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dvb_usb_device {int num_adapters_initialized; int /*<<< orphan*/  state; TYPE_1__* adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVB_USB_STATE_DVB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d)
{
	int n;

	for (n = 0; n < d->num_adapters_initialized; n++) {
		FUNC1(&d->adapter[n]);
		FUNC0(&d->adapter[n]);
		FUNC2(&d->adapter[n]);
		FUNC3(d->adapter[n].priv);
	}
	d->num_adapters_initialized = 0;
	d->state &= ~DVB_USB_STATE_DVB;
	return 0;
}