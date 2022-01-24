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
struct smc_local {scalar_t__ phy_type; int /*<<< orphan*/  lock; int /*<<< orphan*/  mii; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct smc_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct smc_local *lp = FUNC1(dev);
	int ret = -EINVAL;

	if (lp->phy_type != 0) {
		FUNC2(&lp->lock);
		ret = FUNC0(&lp->mii);
		FUNC3(&lp->lock);
	}

	return ret;
}