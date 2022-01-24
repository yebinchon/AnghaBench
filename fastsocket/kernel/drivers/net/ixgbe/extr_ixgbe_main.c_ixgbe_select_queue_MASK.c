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
typedef  int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int real_num_tx_queues; } ;
struct ixgbe_ring_feature {int indices; scalar_t__ offset; } ;
struct ixgbe_adapter {int flags; struct ixgbe_ring_feature* ring_feature; } ;
typedef  scalar_t__ __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_FCOE ; 
 int /*<<< orphan*/  ETH_P_FIP ; 
 int IXGBE_FLAG_FCOE_ENABLED ; 
 int IXGBE_FLAG_FDIR_HASH_CAPABLE ; 
 size_t RING_F_FCOE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct ixgbe_adapter* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct net_device*,struct sk_buff*) ; 
 int FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static u16 FUNC8(struct net_device *dev, struct sk_buff *skb)
{
	struct ixgbe_adapter *adapter = FUNC1(dev);
	int txq = FUNC3(skb) ? FUNC2(skb) :
					       FUNC5();
#ifdef IXGBE_FCOE
	__be16 protocol = vlan_get_protocol(skb);

	if (((protocol == htons(ETH_P_FCOE)) ||
	    (protocol == htons(ETH_P_FIP))) &&
	    (adapter->flags & IXGBE_FLAG_FCOE_ENABLED)) {
		struct ixgbe_ring_feature *f;

		f = &adapter->ring_feature[RING_F_FCOE];

		while (txq >= f->indices)
			txq -= f->indices;
		txq += adapter->ring_feature[RING_F_FCOE].offset;

		return txq;
	}
#endif

	if (adapter->flags & IXGBE_FLAG_FDIR_HASH_CAPABLE) {
		while (FUNC6(txq >= dev->real_num_tx_queues))
			txq -= dev->real_num_tx_queues;
		return txq;
	}

	return FUNC4(dev, skb);
}