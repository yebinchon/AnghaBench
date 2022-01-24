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
struct usbnet {scalar_t__ interrupt_count; int /*<<< orphan*/  interrupt_mutex; TYPE_1__* udev; scalar_t__ interrupt; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct usbnet *dev)
{
	if (dev->interrupt) {
		FUNC2(&dev->interrupt_mutex);
		FUNC0(dev->interrupt_count == 0);

		if (dev->interrupt_count && --dev->interrupt_count == 0)
			FUNC4(dev->interrupt);

		FUNC1(&dev->udev->dev,
			"decremented interrupt URB count to %d\n",
			dev->interrupt_count);
		FUNC3(&dev->interrupt_mutex);
	}
}