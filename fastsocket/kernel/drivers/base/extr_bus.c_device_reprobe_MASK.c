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
struct device {TYPE_1__* parent; scalar_t__ driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int FUNC0 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct device *dev)
{
	if (dev->driver) {
		if (dev->parent)        /* Needed for USB */
			FUNC2(&dev->parent->sem);
		FUNC1(dev);
		if (dev->parent)
			FUNC3(&dev->parent->sem);
	}
	return FUNC0(dev, NULL);
}