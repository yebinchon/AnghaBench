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
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct i2400m {int /*<<< orphan*/  tx_lock; struct sk_buff* wake_tx_skb; int /*<<< orphan*/  wake_tx_ws; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct net_device*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (int,struct device*,char*,struct net_device*,struct i2400m*) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2400m*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct i2400m* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static
int FUNC9(struct net_device *net_dev)
{
	struct i2400m *i2400m = FUNC6(net_dev);
	struct device *dev = FUNC3(i2400m);

	FUNC2(3, dev, "(net_dev %p [i2400m %p])\n", net_dev, i2400m);
	/* See i2400m_hard_start_xmit(), references are taken there
	 * and here we release them if the work was still
	 * pending. Note we can't differentiate work not pending vs
	 * never scheduled, so the NULL check does that. */
	if (FUNC0(&i2400m->wake_tx_ws) == 0
	    && i2400m->wake_tx_skb != NULL) {
		unsigned long flags;
		struct sk_buff *wake_tx_skb;
		FUNC7(&i2400m->tx_lock, flags);
		wake_tx_skb = i2400m->wake_tx_skb;	/* compat help */
		i2400m->wake_tx_skb = NULL;	/* compat help */
		FUNC8(&i2400m->tx_lock, flags);
		FUNC4(i2400m);
		FUNC5(wake_tx_skb);
	}
	FUNC1(3, dev, "(net_dev %p [i2400m %p]) = 0\n", net_dev, i2400m);
	return 0;
}