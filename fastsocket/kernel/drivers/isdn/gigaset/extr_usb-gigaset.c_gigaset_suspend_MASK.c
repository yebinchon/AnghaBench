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
struct usb_interface {int dummy; } ;
struct TYPE_4__ {TYPE_1__* usb; } ;
struct cardstate {TYPE_2__ hw; int /*<<< orphan*/  write_tasklet; scalar_t__ connected; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_3__ {int /*<<< orphan*/  bulk_out_urb; int /*<<< orphan*/  read_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct cardstate* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf, pm_message_t message)
{
	struct cardstate *cs = FUNC2(intf);

	/* stop activity */
	cs->connected = 0;	/* prevent rescheduling */
	FUNC3(cs->hw.usb->read_urb);
	FUNC1(&cs->write_tasklet);
	FUNC3(cs->hw.usb->bulk_out_urb);

	FUNC0(DEBUG_SUSPEND, "suspend complete");
	return 0;
}