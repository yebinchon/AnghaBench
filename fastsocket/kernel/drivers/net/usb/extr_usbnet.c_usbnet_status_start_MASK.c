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
struct usbnet {int interrupt_count; int /*<<< orphan*/  interrupt_mutex; TYPE_1__* udev; int /*<<< orphan*/ * interrupt; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct usbnet *dev, gfp_t mem_flags)
{
	int ret = 0;

	FUNC0(dev->interrupt == NULL);
	if (dev->interrupt) {
		FUNC2(&dev->interrupt_mutex);

		if (++dev->interrupt_count == 1)
			ret = FUNC4(dev->interrupt, mem_flags);

		FUNC1(&dev->udev->dev, "incremented interrupt URB count to %d\n",
			dev->interrupt_count);
		FUNC3(&dev->interrupt_mutex);
	}
	return ret;
}