#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct TYPE_4__ {scalar_t__ loopback_mode; } ;
struct niu {TYPE_2__ timer; TYPE_1__ link_config; int /*<<< orphan*/  lock; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETH_DATA_LEN ; 
 scalar_t__ HZ ; 
 scalar_t__ LOOPBACK_DISABLED ; 
 int NIU_MAX_MTU ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 struct niu* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct niu*) ; 
 int FUNC7 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct niu*) ; 
 int /*<<< orphan*/  FUNC9 (struct niu*) ; 
 int /*<<< orphan*/  FUNC10 (struct niu*,struct net_device*) ; 
 int FUNC11 (struct niu*) ; 
 int /*<<< orphan*/  FUNC12 (struct niu*) ; 
 int /*<<< orphan*/  niu_timer ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct net_device *dev, int new_mtu)
{
	struct niu *np = FUNC2(dev);
	int err, orig_jumbo, new_jumbo;

	if (new_mtu < 68 || new_mtu > NIU_MAX_MTU)
		return -EINVAL;

	orig_jumbo = (dev->mtu > ETH_DATA_LEN);
	new_jumbo = (new_mtu > ETH_DATA_LEN);

	dev->mtu = new_mtu;

	if (!FUNC4(dev) ||
	    (orig_jumbo == new_jumbo))
		return 0;

	FUNC10(np, dev);

	FUNC9(np);

	FUNC8(np);

	err = FUNC6(np);
	if (err)
		return err;

	FUNC13(&np->lock);

	err = FUNC11(np);
	if (!err) {
		FUNC1(&np->timer);
		np->timer.expires = jiffies + HZ;
		np->timer.data = (unsigned long) np;
		np->timer.function = niu_timer;

		err = FUNC7(np, 1);
		if (err)
			FUNC12(np);
	}

	FUNC14(&np->lock);

	if (!err) {
		FUNC5(dev);
		if (np->link_config.loopback_mode != LOOPBACK_DISABLED)
			FUNC3(dev);

		FUNC0(&np->timer);
	}

	return err;
}