#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct bonding {int /*<<< orphan*/  lock; int /*<<< orphan*/  curr_slave_lock; TYPE_1__* curr_active_slave; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bonding*) ; 
 int NETDEV_TX_OK ; 
 int FUNC1 (struct bonding*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct bonding* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct net_device *bond_dev)
{
	struct bonding *bond = FUNC3(bond_dev);
	int res = 1;

	FUNC4(&bond->lock);
	FUNC4(&bond->curr_slave_lock);

	if (!FUNC0(bond))
		goto out;

	if (!bond->curr_active_slave)
		goto out;

	res = FUNC1(bond, skb, bond->curr_active_slave->dev);

out:
	if (res)
		/* no suitable interface, frame not sent */
		FUNC2(skb);

	FUNC5(&bond->curr_slave_lock);
	FUNC5(&bond->lock);
	return NETDEV_TX_OK;
}