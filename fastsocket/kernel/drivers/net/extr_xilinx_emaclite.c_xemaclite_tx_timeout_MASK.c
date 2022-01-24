#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_local {int /*<<< orphan*/  reset_lock; int /*<<< orphan*/ * deferred_skb; TYPE_1__* ndev; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {int trans_start; TYPE_2__ stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long TX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct net_local*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_local*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct net_local *lp = (struct net_local *) FUNC2(dev);
	unsigned long flags;

	FUNC0(&lp->ndev->dev, "Exceeded transmit timeout of %lu ms\n",
		TX_TIMEOUT * 1000UL / HZ);

	dev->stats.tx_errors++;

	/* Reset the device */
	FUNC5(&lp->reset_lock, flags);

	/* Shouldn't really be necessary, but shouldn't hurt */
	FUNC3(dev);

	FUNC7(lp);
	FUNC8(lp);

	if (lp->deferred_skb) {
		FUNC1(lp->deferred_skb);
		lp->deferred_skb = NULL;
		dev->stats.tx_errors++;
	}

	/* To exclude tx timeout */
	dev->trans_start = 0xffffffff - TX_TIMEOUT - TX_TIMEOUT;

	/* We're all ready to go. Start the queue */
	FUNC4(dev);
	FUNC6(&lp->reset_lock, flags);
}