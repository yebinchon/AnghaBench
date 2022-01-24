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
struct devres_group {int /*<<< orphan*/ * node; } ;
struct device {int /*<<< orphan*/  devres_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ *) ; 
 struct devres_group* FUNC2 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct device *dev, void *id)
{
	struct devres_group *grp;
	unsigned long flags;

	FUNC3(&dev->devres_lock, flags);

	grp = FUNC2(dev, id);
	if (grp)
		FUNC1(dev, &grp->node[1]);
	else
		FUNC0(1);

	FUNC4(&dev->devres_lock, flags);
}