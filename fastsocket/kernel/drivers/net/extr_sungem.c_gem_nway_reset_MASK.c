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
struct gem {int /*<<< orphan*/  lock; int /*<<< orphan*/  want_autoneg; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct gem*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 int /*<<< orphan*/  FUNC2 (struct gem*) ; 
 struct gem* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct gem *gp = FUNC3(dev);

	if (!gp->want_autoneg)
		return -EINVAL;

	/* Restart link process. */
	FUNC4(&gp->lock);
	FUNC1(gp);
	FUNC0(gp, NULL);
	FUNC2(gp);
	FUNC5(&gp->lock);

	return 0;
}