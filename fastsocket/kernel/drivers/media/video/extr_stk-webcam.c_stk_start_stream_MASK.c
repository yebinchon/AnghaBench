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
struct stk_camera {int /*<<< orphan*/  urbs_used; TYPE_1__* isobufs; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {scalar_t__ urb; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ISO_BUFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC3 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC4 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC5 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC6 (struct stk_camera*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct stk_camera*,int,int) ; 
 scalar_t__ FUNC8 (struct stk_camera*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct stk_camera *dev)
{
	int value;
	int i, ret;
	int value_116, value_117;

	if (!FUNC4(dev))
		return -ENODEV;
	if (!FUNC3(dev) || !FUNC2(dev)) {
		FUNC0("FIXME: Buffers are not allocated\n");
		return -EFAULT;
	}
	ret = FUNC9(dev->udev, 0, 5);

	if (ret < 0)
		FUNC0("usb_set_interface failed !\n");
	if (FUNC8(dev))
		FUNC0("error awaking the sensor\n");

	FUNC6(dev, 0x0116, &value_116);
	FUNC6(dev, 0x0117, &value_117);

	FUNC7(dev, 0x0116, 0x0000);
	FUNC7(dev, 0x0117, 0x0000);

	FUNC6(dev, 0x0100, &value);
	FUNC7(dev, 0x0100, value | 0x80);

	FUNC7(dev, 0x0116, value_116);
	FUNC7(dev, 0x0117, value_117);
	for (i = 0; i < MAX_ISO_BUFS; i++) {
		if (dev->isobufs[i].urb) {
			ret = FUNC10(dev->isobufs[i].urb, GFP_KERNEL);
			FUNC1(&dev->urbs_used);
			if (ret)
				return ret;
		}
	}
	FUNC5(dev);
	return 0;
}