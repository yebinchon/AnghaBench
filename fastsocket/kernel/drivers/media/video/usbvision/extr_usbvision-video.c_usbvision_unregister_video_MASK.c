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
struct usb_usbvision {int /*<<< orphan*/ * vdev; int /*<<< orphan*/ * rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_PROBE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct usb_usbvision *usbvision)
{
	/* Radio Device: */
	if (usbvision->rdev) {
		FUNC0(DBG_PROBE, "unregister %s [v4l2]",
		       FUNC1(usbvision->rdev));
		if (FUNC3(usbvision->rdev))
			FUNC4(usbvision->rdev);
		else
			FUNC2(usbvision->rdev);
		usbvision->rdev = NULL;
	}

	/* Video Device: */
	if (usbvision->vdev) {
		FUNC0(DBG_PROBE, "unregister %s [v4l2]",
		       FUNC1(usbvision->vdev));
		if (FUNC3(usbvision->vdev))
			FUNC4(usbvision->vdev);
		else
			FUNC2(usbvision->vdev);
		usbvision->vdev = NULL;
	}
}