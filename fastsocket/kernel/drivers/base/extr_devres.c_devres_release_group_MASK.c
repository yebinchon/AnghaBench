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
struct list_head {struct list_head* next; } ;
struct devres_group {TYPE_1__* node; } ;
struct device {int /*<<< orphan*/  devres_lock; struct list_head devres_head; } ;
struct TYPE_2__ {struct list_head entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct devres_group* FUNC1 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 int FUNC3 (struct device*,struct list_head*,struct list_head*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct device *dev, void *id)
{
	struct devres_group *grp;
	unsigned long flags;
	int cnt = 0;

	FUNC4(&dev->devres_lock, flags);

	grp = FUNC1(dev, id);
	if (grp) {
		struct list_head *first = &grp->node[0].entry;
		struct list_head *end = &dev->devres_head;

		if (!FUNC2(&grp->node[1].entry))
			end = grp->node[1].entry.next;

		cnt = FUNC3(dev, first, end, flags);
	} else {
		FUNC0(1);
		FUNC5(&dev->devres_lock, flags);
	}

	return cnt;
}