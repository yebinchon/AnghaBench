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
struct slave {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct packet_type {int dummy; } ;
struct net_device {int flags; } ;
struct lacpdu {int dummy; } ;
struct bonding {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_MASTER ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct lacpdu*,struct slave*,int /*<<< orphan*/ ) ; 
 struct slave* FUNC1 (struct bonding*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  init_net ; 
 struct bonding* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC9(struct sk_buff *skb, struct net_device *dev, struct packet_type* ptype, struct net_device *orig_dev)
{
	struct bonding *bond = FUNC4(dev);
	struct slave *slave = NULL;
	int ret = NET_RX_DROP;

	if (FUNC3(dev) != &init_net)
		goto out;

	if (!(dev->flags & IFF_MASTER))
		goto out;

	skb = FUNC8(skb, GFP_ATOMIC);
	if (!skb)
		goto out;

	if (!FUNC5(skb, sizeof(struct lacpdu)))
		goto out;

	FUNC6(&bond->lock);
	slave = FUNC1((struct bonding *)FUNC4(dev),
					orig_dev);
	if (!slave)
		goto out_unlock;

	FUNC0((struct lacpdu *) skb->data, slave, skb->len);

	ret = NET_RX_SUCCESS;

out_unlock:
	FUNC7(&bond->lock);
out:
	FUNC2(skb);

	return ret;
}