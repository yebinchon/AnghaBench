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
struct usbhid_device {scalar_t__ outhead; scalar_t__ outtail; int /*<<< orphan*/  wait; int /*<<< orphan*/  iofl; int /*<<< orphan*/  intf; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_OUT_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct hid_device*) ; 
 struct hid_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct usbhid_device *usbhid)
{
	struct hid_device *hid = FUNC3(usbhid->intf);
	int kicked;

	if (!hid)
		return 0;

	if ((kicked = (usbhid->outhead != usbhid->outtail))) {
		FUNC1("Kicking head %d tail %d", usbhid->outhead, usbhid->outtail);
		if (FUNC2(hid)) {
			FUNC0(HID_OUT_RUNNING, &usbhid->iofl);
			FUNC4(&usbhid->wait);
		}
	}
	return kicked;
}