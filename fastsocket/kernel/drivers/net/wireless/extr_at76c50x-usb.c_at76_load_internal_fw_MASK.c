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
struct usb_device {int /*<<< orphan*/  dev; } ;
struct fwentry {int /*<<< orphan*/  intfw_size; int /*<<< orphan*/  intfw; int /*<<< orphan*/  board_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_DEVSTART ; 
 int HZ ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_device*) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 

__attribute__((used)) static int FUNC7(struct usb_device *udev, struct fwentry *fwe)
{
	int ret;
	int need_remap = !FUNC1(fwe->board_type);

	ret = FUNC3(udev, fwe->intfw, fwe->intfw_size,
				   need_remap ? 0 : 2 * HZ);

	if (ret < 0) {
		FUNC4(KERN_ERR, &udev->dev,
			   "downloading internal fw failed with %d\n", ret);
		goto exit;
	}

	FUNC0(DBG_DEVSTART, "sending REMAP");

	/* no REMAP for 505A (see SF driver) */
	if (need_remap) {
		ret = FUNC2(udev);
		if (ret < 0) {
			FUNC4(KERN_ERR, &udev->dev,
				   "sending REMAP failed with %d\n", ret);
			goto exit;
		}
	}

	FUNC0(DBG_DEVSTART, "sleeping for 2 seconds");
	FUNC5(2 * HZ + 1);
	FUNC6(udev);

exit:
	return ret;
}