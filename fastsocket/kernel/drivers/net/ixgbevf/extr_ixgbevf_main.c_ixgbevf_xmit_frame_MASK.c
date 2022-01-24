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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ protocol; int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct ixgbevf_ring {unsigned int next_to_use; scalar_t__ tail; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;
struct ixgbevf_adapter {TYPE_1__ hw; scalar_t__ vlgrp; int /*<<< orphan*/  tx_busy; struct ixgbevf_ring* tx_ring; } ;
struct TYPE_4__ {unsigned short nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 scalar_t__ DESC_NEEDED ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 unsigned int IXGBE_TX_FLAGS_CSUM ; 
 unsigned int IXGBE_TX_FLAGS_IPV4 ; 
 unsigned int IXGBE_TX_FLAGS_TSO ; 
 unsigned int IXGBE_TX_FLAGS_VLAN ; 
 unsigned int IXGBE_TX_FLAGS_VLAN_SHIFT ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ixgbevf_ring*,scalar_t__) ; 
 int FUNC6 (struct ixgbevf_ring*,struct sk_buff*,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct ixgbevf_ring*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbevf_ring*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct ixgbevf_ring*,unsigned int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ixgbevf_adapter* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 TYPE_2__* FUNC14 (struct sk_buff*) ; 
 unsigned int FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct net_device *netdev)
{
	struct ixgbevf_adapter *adapter = FUNC10(netdev);
	struct ixgbevf_ring *tx_ring;
	unsigned int first;
	unsigned int tx_flags = 0;
	u8 hdr_len = 0;
	int r_idx = 0, tso;
	u16 count = FUNC0(FUNC13(skb));
#if PAGE_SIZE > IXGBE_MAX_DATA_PER_TXD
	unsigned short f;
#endif
	u8 *dst_mac = FUNC12(skb, 0, 0, NULL);
	if (!dst_mac || FUNC4(dst_mac)) {
		FUNC1(skb);
		return NETDEV_TX_OK;
	}

	tx_ring = &adapter->tx_ring[r_idx];

	/*
	 * need: 1 descriptor per page * PAGE_SIZE/IXGBE_MAX_DATA_PER_TXD,
	 *       + 1 desc for skb_headlen/IXGBE_MAX_DATA_PER_TXD,
	 *       + 2 desc gap to keep tail from touching head,
	 *       + 1 desc for context descriptor,
	 * otherwise try next time
	 */
#if PAGE_SIZE > IXGBE_MAX_DATA_PER_TXD
	for (f = 0; f < skb_shinfo(skb)->nr_frags; f++)
		count += TXD_USE_COUNT(skb_frag_size(&skb_shinfo(skb)->frags[f]));
#else
	count += FUNC14(skb)->nr_frags;
#endif
	if (FUNC5(tx_ring, count + 3)) {
		adapter->tx_busy++;
		return NETDEV_TX_BUSY;
	}

	if (adapter->vlgrp && FUNC16(skb)) {
		tx_flags |= FUNC15(skb);
		tx_flags <<= IXGBE_TX_FLAGS_VLAN_SHIFT;
		tx_flags |= IXGBE_TX_FLAGS_VLAN;
	}

	first = tx_ring->next_to_use;

	if (skb->protocol == FUNC3(ETH_P_IP))
		tx_flags |= IXGBE_TX_FLAGS_IPV4;
	tso = FUNC6(tx_ring, skb, tx_flags, &hdr_len);
	if (tso < 0) {
		FUNC2(skb);
		return NETDEV_TX_OK;
	}

	if (tso)
		tx_flags |= IXGBE_TX_FLAGS_TSO | IXGBE_TX_FLAGS_CSUM;
	else if (FUNC7(tx_ring, skb, tx_flags))
		tx_flags |= IXGBE_TX_FLAGS_CSUM;

	FUNC9(tx_ring, tx_flags,
			 FUNC8(tx_ring, skb, tx_flags),
			 first, skb->len, hdr_len);

	FUNC17(tx_ring->next_to_use, adapter->hw.hw_addr + tx_ring->tail);

	FUNC5(tx_ring, DESC_NEEDED);

	return NETDEV_TX_OK;
}