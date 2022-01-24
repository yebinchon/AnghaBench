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
struct TYPE_3__ {int /*<<< orphan*/  vlan; } ;
struct TYPE_4__ {TYPE_1__ upper; } ;
union ixgbe_adv_rx_desc {TYPE_2__ wb; } ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int features; } ;
struct ixgbe_ring {int /*<<< orphan*/  queue_index; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_RXD_STAT_VP ; 
 int NETIF_F_HW_VLAN_RX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_ring*,union ixgbe_adv_rx_desc*,struct sk_buff*) ; 
 scalar_t__ FUNC5 (union ixgbe_adv_rx_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_ring*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct ixgbe_ring *rx_ring,
				     union ixgbe_adv_rx_desc *rx_desc,
				     struct sk_buff *skb)
{
	struct net_device *dev = rx_ring->netdev;

	FUNC6(rx_ring, skb);

	FUNC4(rx_ring, rx_desc, skb);

	FUNC3(rx_ring, rx_desc, skb);

#ifdef CONFIG_IXGBE_PTP
	ixgbe_ptp_rx_hwtstamp(rx_ring, rx_desc, skb);
#endif

	if ((dev->features & NETIF_F_HW_VLAN_RX) &&
	    FUNC5(rx_desc, IXGBE_RXD_STAT_VP)) {
		u16 vid = FUNC7(rx_desc->wb.upper.vlan);
		FUNC0(skb, vid);
	}

	FUNC8(skb, rx_ring->queue_index);

	skb->protocol = FUNC1(skb, dev);
}