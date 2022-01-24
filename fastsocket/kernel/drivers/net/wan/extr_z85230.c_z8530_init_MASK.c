#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * lock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * lock; } ;
struct z8530_dev {int /*<<< orphan*/  lock; TYPE_2__ chanB; TYPE_1__ chanA; } ;

/* Variables and functions */
 int FUNC0 (struct z8530_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct z8530_dev *dev)
{
	unsigned long flags;
	int ret;

	/* Set up the chip level lock */
	FUNC1(&dev->lock);
	dev->chanA.lock = &dev->lock;
	dev->chanB.lock = &dev->lock;

	FUNC2(&dev->lock, flags);
	ret = FUNC0(dev);
	FUNC3(&dev->lock, flags);

	return ret;
}