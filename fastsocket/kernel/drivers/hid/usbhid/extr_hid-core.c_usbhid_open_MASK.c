#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct usbhid_device {TYPE_1__* intf; } ;
struct hid_device {int /*<<< orphan*/  open; struct usbhid_device* driver_data; } ;
struct TYPE_3__ {int needs_remote_wakeup; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  hid_open_mut ; 
 scalar_t__ FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(struct hid_device *hid)
{
	struct usbhid_device *usbhid = hid->driver_data;
	int res;

	FUNC2(&hid_open_mut);
	if (!hid->open++) {
		res = FUNC4(usbhid->intf);
		/* the device must be awake to reliable request remote wakeup */
		if (res < 0) {
			hid->open--;
			FUNC3(&hid_open_mut);
			return -EIO;
		}
		usbhid->intf->needs_remote_wakeup = 1;
		if (FUNC1(hid))
			FUNC0(hid);
 
		FUNC5(usbhid->intf);
	}
	FUNC3(&hid_open_mut);
	return 0;
}