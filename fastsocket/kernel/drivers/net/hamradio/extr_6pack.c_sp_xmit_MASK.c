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
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct sixpack {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct sixpack* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sixpack*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC6(struct sk_buff *skb, struct net_device *dev)
{
	struct sixpack *sp = FUNC1(dev);

	FUNC4(&sp->lock);
	/* We were not busy, so we are now... :-) */
	FUNC2(dev);
	dev->stats.tx_bytes += skb->len;
	FUNC3(sp, skb->data, skb->len);
	FUNC5(&sp->lock);

	FUNC0(skb);

	return NETDEV_TX_OK;
}