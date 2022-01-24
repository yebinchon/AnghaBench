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
struct TYPE_2__ {int /*<<< orphan*/ * next; } ;
struct device {TYPE_1__ devres_head; int /*<<< orphan*/  devres_lock; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ *,TYPE_1__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct device *dev)
{
	unsigned long flags;

	/* Looks like an uninitialized device structure */
	if (FUNC0(dev->devres_head.next == NULL))
		return -ENODEV;
	FUNC2(&dev->devres_lock, flags);
	return FUNC1(dev, dev->devres_head.next, &dev->devres_head,
			     flags);
}