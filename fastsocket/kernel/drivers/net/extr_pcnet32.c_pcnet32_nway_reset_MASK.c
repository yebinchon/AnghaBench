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
struct pcnet32_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mii_if; scalar_t__ mii; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 struct pcnet32_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct pcnet32_private *lp = FUNC1(dev);
	unsigned long flags;
	int r = -EOPNOTSUPP;

	if (lp->mii) {
		FUNC2(&lp->lock, flags);
		r = FUNC0(&lp->mii_if);
		FUNC3(&lp->lock, flags);
	}
	return r;
}