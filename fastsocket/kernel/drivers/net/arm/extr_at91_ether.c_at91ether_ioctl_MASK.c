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
struct ifreq {int dummy; } ;
struct at91_private {int /*<<< orphan*/  lock; int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ifreq*) ; 
 struct at91_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct at91_private *lp = FUNC4(dev);
	int res;

	if (!FUNC5(dev))
		return -EINVAL;

	FUNC6(&lp->lock);
	FUNC1();
	res = FUNC2(&lp->mii, FUNC3(rq), cmd, NULL);
	FUNC0();
	FUNC7(&lp->lock);

	return res;
}