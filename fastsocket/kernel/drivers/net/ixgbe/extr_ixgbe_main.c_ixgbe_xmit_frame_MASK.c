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
struct sk_buff {int len; size_t queue_mapping; } ;
struct net_device {int dummy; } ;
struct ixgbe_ring {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_ring** tx_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 struct ixgbe_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC5(struct sk_buff *skb,
				    struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC1(netdev);
	struct ixgbe_ring *tx_ring;

	/*
	 * The minimum packet size for olinfo paylen is 17 so pad the skb
	 * in order to meet this minimum size requirement.
	 */
	if (FUNC4(skb->len < 17)) {
		if (FUNC2(skb, 17 - skb->len))
			return NETDEV_TX_OK;
		skb->len = 17;
		FUNC3(skb, 17);
	}

	tx_ring = adapter->tx_ring[skb->queue_mapping];
	return FUNC0(skb, adapter, tx_ring);
}