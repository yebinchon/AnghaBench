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
struct sk_buff {int /*<<< orphan*/  rxhash; int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; } ;
struct net_device {int features; } ;
struct be_rx_obj {struct be_adapter* adapter; } ;
struct be_rx_compl_info {int /*<<< orphan*/  vlan_tag; scalar_t__ vlanf; int /*<<< orphan*/  rss_hash; } ;
struct be_adapter {int /*<<< orphan*/  vlan_grp; struct be_rx_obj* rx_obj; scalar_t__ rx_csum; struct net_device* netdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_drops_no_skbs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BE_RX_SKB_ALLOC_SIZE ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int NETIF_F_RXHASH ; 
 int /*<<< orphan*/  FUNC0 (struct be_rx_obj*,struct be_rx_compl_info*) ; 
 scalar_t__ FUNC1 (struct be_rx_compl_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC3 (int) ; 
 struct sk_buff* FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct be_rx_obj*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct be_rx_obj*,struct sk_buff*,struct be_rx_compl_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct be_rx_obj *rxo,
				struct be_rx_compl_info *rxcp)
{
	struct be_adapter *adapter = rxo->adapter;
	struct net_device *netdev = adapter->netdev;
	struct sk_buff *skb;

	skb = FUNC4(netdev, BE_RX_SKB_ALLOC_SIZE);
	if (FUNC10(!skb)) {
		FUNC6(rxo)->rx_drops_no_skbs++;
		FUNC0(rxo, rxcp);
		return;
	}

	FUNC8(rxo, skb, rxcp);

	if (FUNC3(adapter->rx_csum && FUNC1(rxcp)))
		skb->ip_summed = CHECKSUM_UNNECESSARY;
	else
		FUNC7(skb);

	skb->protocol = FUNC2(skb, netdev);
	FUNC9(skb, rxo - &adapter->rx_obj[0]);
	if (netdev->features & NETIF_F_RXHASH)
		skb->rxhash = rxcp->rss_hash;

	if (rxcp->vlanf)
		FUNC11(skb, adapter->vlan_grp,
					rxcp->vlan_tag);
	else
		FUNC5(skb);
}