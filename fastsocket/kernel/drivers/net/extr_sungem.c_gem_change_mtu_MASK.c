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
struct net_device {int mtu; } ;
struct gem {scalar_t__ lstate; int /*<<< orphan*/  pm_mutex; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_lock; scalar_t__ running; } ;

/* Variables and functions */
 int EINVAL ; 
 int GEM_MAX_MTU ; 
 int GEM_MIN_MTU ; 
 int /*<<< orphan*/  FUNC0 (struct gem*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 scalar_t__ link_up ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct gem* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, int new_mtu)
{
	struct gem *gp = FUNC4(dev);

	if (new_mtu < GEM_MIN_MTU || new_mtu > GEM_MAX_MTU)
		return -EINVAL;

	if (!FUNC6(dev) || !FUNC5(dev)) {
		/* We'll just catch it later when the
		 * device is up'd or resumed.
		 */
		dev->mtu = new_mtu;
		return 0;
	}

	FUNC2(&gp->pm_mutex);
	FUNC8(&gp->lock);
	FUNC7(&gp->tx_lock);
	dev->mtu = new_mtu;
	if (gp->running) {
		FUNC0(gp);
		if (gp->lstate == link_up)
			FUNC1(gp);
	}
	FUNC9(&gp->tx_lock);
	FUNC10(&gp->lock);
	FUNC3(&gp->pm_mutex);

	return 0;
}