#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char bRequest; } ;
struct iforce {int bus; char* edata; int /*<<< orphan*/  expect_packet; int /*<<< orphan*/  wait; TYPE_2__* ctrl; int /*<<< orphan*/  usbdev; TYPE_1__ cr; } ;
struct TYPE_5__ {int /*<<< orphan*/  status; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  FF_CMD_QUERY ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HZ ; 
#define  IFORCE_232 129 
#define  IFORCE_USB 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct iforce*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct iforce *iforce, char *packet)
{
	switch (iforce->bus) {

	case IFORCE_USB: {
#ifdef CONFIG_JOYSTICK_IFORCE_USB
		int status;

		iforce->cr.bRequest = packet[0];
		iforce->ctrl->dev = iforce->usbdev;

		status = usb_submit_urb(iforce->ctrl, GFP_ATOMIC);
		if (status) {
			err("usb_submit_urb failed %d", status);
			return -1;
		}

		wait_event_interruptible_timeout(iforce->wait,
			iforce->ctrl->status != -EINPROGRESS, HZ);

		if (iforce->ctrl->status) {
			dbg("iforce->ctrl->status = %d", iforce->ctrl->status);
			usb_unlink_urb(iforce->ctrl);
			return -1;
		}
#else
		FUNC0("iforce_get_id_packet: iforce->bus = USB!");
#endif
		}
		break;

	case IFORCE_232:

#ifdef CONFIG_JOYSTICK_IFORCE_232
		iforce->expect_packet = FF_CMD_QUERY;
		iforce_send_packet(iforce, FF_CMD_QUERY, packet);

		wait_event_interruptible_timeout(iforce->wait,
			!iforce->expect_packet, HZ);

		if (iforce->expect_packet) {
			iforce->expect_packet = 0;
			return -1;
		}
#else
		FUNC1("iforce_get_id_packet: iforce->bus = SERIO!");
#endif
		break;

	default:
		FUNC1("iforce_get_id_packet: iforce->bus = %d", iforce->bus);
		break;
	}

	return -(iforce->edata[0] != packet[0]);
}