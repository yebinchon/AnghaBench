#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int num_adapters; scalar_t__ generic_bulk_ctrl_endpoint; int /*<<< orphan*/ * adapter; } ;
struct dvb_usb_device {TYPE_1__ props; TYPE_2__* udev; int /*<<< orphan*/  state; int /*<<< orphan*/  num_adapters_initialized; struct dvb_usb_adapter* adapter; } ;
struct dvb_usb_adapter_properties {int dummy; } ;
struct TYPE_8__ {int caps; int pid_filter_count; scalar_t__ size_of_priv; } ;
struct dvb_usb_adapter {int id; int pid_filtering; int max_feed_count; int /*<<< orphan*/ * priv; TYPE_5__ props; struct dvb_usb_device* dev; } ;
struct TYPE_7__ {scalar_t__ speed; } ;

/* Variables and functions */
 int DVB_USB_ADAP_HAS_PID_FILTER ; 
 int DVB_USB_ADAP_NEED_PID_FILTERING ; 
 int /*<<< orphan*/  DVB_USB_STATE_DVB ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ USB_SPEED_FULL ; 
 int FUNC0 (struct dvb_usb_adapter*,short*) ; 
 int FUNC1 (struct dvb_usb_adapter*) ; 
 int FUNC2 (struct dvb_usb_adapter*) ; 
 scalar_t__ dvb_usb_force_pid_filter_usage ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct dvb_usb_device *d, short *adapter_nrs)
{
	struct dvb_usb_adapter *adap;
	int ret, n;

	for (n = 0; n < d->props.num_adapters; n++) {
		adap = &d->adapter[n];
		adap->dev = d;
		adap->id  = n;

		FUNC6(&adap->props, &d->props.adapter[n], sizeof(struct dvb_usb_adapter_properties));

		/* speed - when running at FULL speed we need a HW PID filter */
		if (d->udev->speed == USB_SPEED_FULL && !(adap->props.caps & DVB_USB_ADAP_HAS_PID_FILTER)) {
			FUNC3("This USB2.0 device cannot be run on a USB1.1 port. (it lacks a hardware PID filter)");
			return -ENODEV;
		}

		if ((d->udev->speed == USB_SPEED_FULL && adap->props.caps & DVB_USB_ADAP_HAS_PID_FILTER) ||
			(adap->props.caps & DVB_USB_ADAP_NEED_PID_FILTERING)) {
			FUNC4("will use the device's hardware PID filter (table count: %d).", adap->props.pid_filter_count);
			adap->pid_filtering  = 1;
			adap->max_feed_count = adap->props.pid_filter_count;
		} else {
			FUNC4("will pass the complete MPEG2 transport stream to the software demuxer.");
			adap->pid_filtering  = 0;
			adap->max_feed_count = 255;
		}

		if (!adap->pid_filtering &&
			dvb_usb_force_pid_filter_usage &&
			adap->props.caps & DVB_USB_ADAP_HAS_PID_FILTER) {
			FUNC4("pid filter enabled by module option.");
			adap->pid_filtering  = 1;
			adap->max_feed_count = adap->props.pid_filter_count;
		}

		if (adap->props.size_of_priv > 0) {
			adap->priv = FUNC5(adap->props.size_of_priv, GFP_KERNEL);
			if (adap->priv == NULL) {
				FUNC3("no memory for priv for adapter %d.", n);
				return -ENOMEM;
			}
		}

		if ((ret = FUNC2(adap)) ||
			(ret = FUNC0(adap, adapter_nrs)) ||
			(ret = FUNC1(adap))) {
			return ret;
		}

		d->num_adapters_initialized++;
		d->state |= DVB_USB_STATE_DVB;
	}

	/*
	 * when reloading the driver w/o replugging the device
	 * sometimes a timeout occures, this helps
	 */
	if (d->props.generic_bulk_ctrl_endpoint != 0) {
		FUNC7(d->udev, FUNC9(d->udev, d->props.generic_bulk_ctrl_endpoint));
		FUNC7(d->udev, FUNC8(d->udev, d->props.generic_bulk_ctrl_endpoint));
	}

	return 0;
}