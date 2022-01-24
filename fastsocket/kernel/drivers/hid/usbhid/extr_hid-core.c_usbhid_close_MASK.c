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
struct usbhid_device {int /*<<< orphan*/  lock; TYPE_1__* intf; int /*<<< orphan*/  urbin; } ;
struct hid_device {int /*<<< orphan*/  open; struct usbhid_device* driver_data; } ;
struct TYPE_2__ {scalar_t__ needs_remote_wakeup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usbhid_device*) ; 
 int /*<<< orphan*/  hid_open_mut ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct hid_device *hid)
{
	struct usbhid_device *usbhid = hid->driver_data;

	FUNC1(&hid_open_mut);

	/* protecting hid->open to make sure we don't restart
	 * data acquistion due to a resumption we no longer
	 * care about
	 */
	FUNC3(&usbhid->lock);
	if (!--hid->open) {
		FUNC4(&usbhid->lock);
		FUNC0(usbhid);
		FUNC5(usbhid->urbin);
		usbhid->intf->needs_remote_wakeup = 0;
	} else {
		FUNC4(&usbhid->lock);
	}
	FUNC2(&hid_open_mut);
}