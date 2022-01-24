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
struct usbhid_device {int /*<<< orphan*/ * urbout; int /*<<< orphan*/ * urbctrl; int /*<<< orphan*/ * urbin; int /*<<< orphan*/  lock; int /*<<< orphan*/  iofl; } ;
struct hid_device {scalar_t__ claimed; struct usbhid_device* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HID_DISCONNECTED ; 
 int /*<<< orphan*/  HID_STARTED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usbhid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct hid_device *hid)
{
	struct usbhid_device *usbhid = hid->driver_data;

	if (FUNC0(!usbhid))
		return;

	FUNC1(HID_STARTED, &usbhid->iofl);
	FUNC6(&usbhid->lock);	/* Sync with error handler */
	FUNC5(HID_DISCONNECTED, &usbhid->iofl);
	FUNC7(&usbhid->lock);
	FUNC9(usbhid->urbin);
	FUNC9(usbhid->urbout);
	FUNC9(usbhid->urbctrl);

	FUNC2(usbhid);

	hid->claimed = 0;

	FUNC8(usbhid->urbin);
	FUNC8(usbhid->urbctrl);
	FUNC8(usbhid->urbout);
	usbhid->urbin = NULL; /* don't mess up next start */
	usbhid->urbctrl = NULL;
	usbhid->urbout = NULL;

	FUNC3(FUNC4(hid), hid);
}