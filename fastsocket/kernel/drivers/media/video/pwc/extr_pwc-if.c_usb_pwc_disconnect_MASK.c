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
struct usb_interface {int dummy; } ;
struct pwc_device {int unplugged; int /*<<< orphan*/  modlock; scalar_t__ vopen; int /*<<< orphan*/  frameq; int /*<<< orphan*/  error_status; int /*<<< orphan*/ * udev; } ;
struct TYPE_2__ {struct pwc_device* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EPIPE ; 
 int MAX_DEV_HINTS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* device_hint ; 
 int /*<<< orphan*/ * FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pwc_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct pwc_device*) ; 
 struct pwc_device* FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct usb_interface *intf)
{
	struct pwc_device *pdev;
	int hint;

	pdev = FUNC8 (intf);
	FUNC4(&pdev->modlock);
	FUNC9 (intf, NULL);
	if (pdev == NULL) {
		FUNC1("pwc_disconnect() Called without private pointer.\n");
		goto disconnect_out;
	}
	if (pdev->udev == NULL) {
		FUNC1("pwc_disconnect() already called for %p\n", pdev);
		goto disconnect_out;
	}
	if (pdev->udev != FUNC3(intf)) {
		FUNC1("pwc_disconnect() Woops: pointer mismatch udev/pdev.\n");
		goto disconnect_out;
	}

	/* We got unplugged; this is signalled by an EPIPE error code */
	if (pdev->vopen) {
		FUNC2("Disconnected while webcam is in use!\n");
		pdev->error_status = EPIPE;
	}

	/* Alert waiting processes */
	FUNC10(&pdev->frameq);
	/* Wait until device is closed */
	if (pdev->vopen) {
		pdev->unplugged = 1;
		FUNC7(pdev);
	} else {
		/* Device is closed, so we can safely unregister it */
		FUNC0("Unregistering video device in disconnect().\n");
		FUNC6(pdev);

disconnect_out:
		/* search device_hint[] table if we occupy a slot, by any chance */
		for (hint = 0; hint < MAX_DEV_HINTS; hint++)
			if (device_hint[hint].pdev == pdev)
				device_hint[hint].pdev = NULL;
	}

	FUNC5(&pdev->modlock);
}