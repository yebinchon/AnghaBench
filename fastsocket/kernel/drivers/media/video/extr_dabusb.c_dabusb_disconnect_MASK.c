#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_t ;
struct usb_interface {int dummy; } ;
typedef  TYPE_1__* pdabusb_t ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int remove_pending; scalar_t__ state; scalar_t__ overruns; int /*<<< orphan*/ * usbdev; int /*<<< orphan*/  remove_ok; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ _started ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  dabusb_class ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10 (struct usb_interface *intf)
{
	wait_queue_t __wait;
	pdabusb_t s = FUNC7 (intf);

	FUNC1("dabusb_disconnect");

	FUNC2(&__wait, current);

	FUNC8 (intf, NULL);
	if (s) {
		FUNC6 (intf, &dabusb_class);
		s->remove_pending = 1;
		FUNC9 (&s->wait);
		FUNC0(&s->remove_ok, &__wait);
		FUNC5(TASK_UNINTERRUPTIBLE);
		if (s->state == _started)
			FUNC4();
		current->state = TASK_RUNNING;
		FUNC3(&s->remove_ok, &__wait);

		s->usbdev = NULL;
		s->overruns = 0;
	}
}