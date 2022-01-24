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
struct lme2510_state {int i2c_talk_onoff; TYPE_1__* lme_urb; int /*<<< orphan*/  buffer; void* usb_buffer; scalar_t__ signal_sn; scalar_t__ signal_level; scalar_t__ signal_lock; } ;
struct dvb_usb_device {int /*<<< orphan*/  rc_dev; int /*<<< orphan*/  udev; struct dvb_usb_adapter* adapter; struct lme2510_state* priv; } ;
struct dvb_usb_adapter {scalar_t__ feedcount; int /*<<< orphan*/  stream; } ;
struct TYPE_2__ {int /*<<< orphan*/  transfer_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void *FUNC5(struct dvb_usb_device *d)
{
	struct lme2510_state *st = d->priv;
	struct dvb_usb_adapter *adap = &d->adapter[0];
	void *buffer = NULL;

	if (adap != NULL) {
		FUNC1(&adap->stream);
		adap->feedcount = 0;
	}

	if (st->lme_urb != NULL) {
		st->i2c_talk_onoff = 1;
		st->signal_lock = 0;
		st->signal_level = 0;
		st->signal_sn = 0;
		buffer = st->usb_buffer;
		FUNC4(st->lme_urb);
		FUNC3(d->udev, 5000, st->buffer,
				  st->lme_urb->transfer_dma);
		FUNC0("Interupt Service Stopped");
		FUNC2(d->rc_dev);
		FUNC0("Remote Stopped");
	}
	return buffer;
}