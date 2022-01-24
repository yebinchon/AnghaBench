#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usbhid_device {scalar_t__ ctrlhead; scalar_t__ ctrltail; int /*<<< orphan*/  wait; int /*<<< orphan*/  iofl; int /*<<< orphan*/  intf; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_CTRL_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (struct hid_device*) ; 
 struct hid_device* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct usbhid_device *usbhid)
{
	struct hid_device *hid = FUNC4(usbhid->intf);
	int kicked;

	FUNC0(hid == NULL);
	if (!hid)
		return 0;

	if ((kicked = (usbhid->ctrlhead != usbhid->ctrltail))) {
		FUNC2("Kicking head %d tail %d", usbhid->ctrlhead, usbhid->ctrltail);
		if (FUNC3(hid)) {
			FUNC1(HID_CTRL_RUNNING, &usbhid->iofl);
			FUNC5(&usbhid->wait);
		}
	}
	return kicked;
}