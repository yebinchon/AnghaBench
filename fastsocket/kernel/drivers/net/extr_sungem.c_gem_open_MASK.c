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
struct net_device {int dummy; } ;
struct gem {int opened; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  asleep; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct gem* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct gem *gp = FUNC3(dev);
	int rc = 0;

	FUNC1(&gp->pm_mutex);

	/* We need the cell enabled */
	if (!gp->asleep)
		rc = FUNC0(dev);
	gp->opened = (rc == 0);

	FUNC2(&gp->pm_mutex);

	return rc;
}