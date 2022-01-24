#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ (* frontend_attach ) (struct dvb_usb_adapter*) ;int /*<<< orphan*/  (* tuner_attach ) (struct dvb_usb_adapter*) ;} ;
struct dvb_usb_adapter {TYPE_4__* dev; TYPE_2__ props; TYPE_5__* fe; int /*<<< orphan*/  dvb_adap; int /*<<< orphan*/  fe_sleep; int /*<<< orphan*/  fe_init; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int /*<<< orphan*/  sleep; int /*<<< orphan*/  init; } ;
struct TYPE_11__ {TYPE_1__ ops; } ;
struct TYPE_10__ {TYPE_3__* desc; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  dvb_usb_fe_sleep ; 
 int /*<<< orphan*/  dvb_usb_fe_wakeup ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct dvb_usb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_usb_adapter*) ; 

int FUNC5(struct dvb_usb_adapter *adap)
{
	if (adap->props.frontend_attach == NULL) {
		FUNC2("strange: '%s' #%d doesn't want to attach a frontend.",adap->dev->desc->name, adap->id);
		return 0;
	}

	/* re-assign sleep and wakeup functions */
	if (adap->props.frontend_attach(adap) == 0 && adap->fe != NULL) {
		adap->fe_init  = adap->fe->ops.init;  adap->fe->ops.init  = dvb_usb_fe_wakeup;
		adap->fe_sleep = adap->fe->ops.sleep; adap->fe->ops.sleep = dvb_usb_fe_sleep;

		if (FUNC1(&adap->dvb_adap, adap->fe)) {
			FUNC2("Frontend registration failed.");
			FUNC0(adap->fe);
			adap->fe = NULL;
			return -ENODEV;
		}

		/* only attach the tuner if the demod is there */
		if (adap->props.tuner_attach != NULL)
			adap->props.tuner_attach(adap);
	} else
		FUNC2("no frontend was attached by '%s'",adap->dev->desc->name);

	return 0;
}