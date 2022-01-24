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
struct net_device {int dummy; } ;
struct TYPE_5__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct TYPE_4__ {int (* open ) (struct iss_net_private*) ;} ;
struct iss_net_private {int /*<<< orphan*/  lock; scalar_t__ timer_val; TYPE_2__ timer; int /*<<< orphan*/  opened_list; int /*<<< orphan*/ * mac; int /*<<< orphan*/  have_mac; TYPE_1__ tp; } ;

/* Variables and functions */
 scalar_t__ ISS_NET_TIMER_VALUE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  iss_net_timer ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__) ; 
 struct iss_net_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  opened ; 
 int /*<<< orphan*/  opened_lock ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct iss_net_private*) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev)
{
	struct iss_net_private *lp = FUNC5(dev);
	char addr[sizeof "255.255.255.255\0"];
	int err;

	FUNC8(&lp->lock);

	if ((err = lp->tp.open(lp)) < 0)
		goto out;

	if (!lp->have_mac) {
		FUNC0(dev, addr, &lp->mac[2]);
		FUNC7(dev, lp->mac);
	}

	FUNC6(dev);

	/* clear buffer - it can happen that the host side of the interface
	 * is full when we get here. In this case, new data is never queued,
	 * SIGIOs never arrive, and the net never works.
	 */
	while ((err = FUNC2(dev)) > 0)
		;

	FUNC8(&opened_lock);
	FUNC3(&lp->opened_list, &opened);
	FUNC9(&opened_lock);

	FUNC1(&lp->timer);
	lp->timer_val = ISS_NET_TIMER_VALUE;
	lp->timer.data = (unsigned long) lp;
	lp->timer.function = iss_net_timer;
	FUNC4(&lp->timer, jiffies + lp->timer_val);

out:
	FUNC9(&lp->lock);
	return err;
}