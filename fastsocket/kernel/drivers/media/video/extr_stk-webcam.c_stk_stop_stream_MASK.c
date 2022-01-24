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
struct stk_camera {int /*<<< orphan*/  udev; TYPE_1__* isobufs; } ;
struct TYPE_2__ {scalar_t__ urb; } ;

/* Variables and functions */
 int MAX_ISO_BUFS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC2 (struct stk_camera*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct stk_camera*,int,int) ; 
 scalar_t__ FUNC4 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC5 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct stk_camera *dev)
{
	int value;
	int i;
	if (FUNC1(dev)) {
		FUNC2(dev, 0x0100, &value);
		FUNC3(dev, 0x0100, value & ~0x80);
		if (dev->isobufs != NULL) {
			for (i = 0; i < MAX_ISO_BUFS; i++) {
				if (dev->isobufs[i].urb)
					FUNC6(dev->isobufs[i].urb);
			}
		}
		FUNC5(dev);

		if (FUNC7(dev->udev, 0, 0))
			FUNC0("usb_set_interface failed !\n");
		if (FUNC4(dev))
			FUNC0("error suspending the sensor\n");
	}
	return 0;
}