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
struct devres_group {TYPE_1__* node; } ;
struct device {int /*<<< orphan*/  devres_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,TYPE_1__*,char*) ; 
 struct devres_group* FUNC2 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct devres_group*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct device *dev, void *id)
{
	struct devres_group *grp;
	unsigned long flags;

	FUNC5(&dev->devres_lock, flags);

	grp = FUNC2(dev, id);
	if (grp) {
		FUNC4(&grp->node[0].entry);
		FUNC4(&grp->node[1].entry);
		FUNC1(dev, &grp->node[0], "REM");
	} else
		FUNC0(1);

	FUNC6(&dev->devres_lock, flags);

	FUNC3(grp);
}