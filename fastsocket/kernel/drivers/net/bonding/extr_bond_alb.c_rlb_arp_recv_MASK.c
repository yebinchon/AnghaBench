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
struct sk_buff {int len; scalar_t__ data; } ;
struct packet_type {int dummy; } ;
struct net_device {int priv_flags; int flags; } ;
struct bonding {int dummy; } ;
struct arp_pkt {scalar_t__ op_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPOP_REPLY ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int IFF_802_1Q_VLAN ; 
 int IFF_BONDING ; 
 int IFF_MASTER ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_net ; 
 struct bonding* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bonding*,struct arp_pkt*) ; 
 struct sk_buff* FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *bond_dev, struct packet_type *ptype, struct net_device *orig_dev)
{
	struct bonding *bond;
	struct arp_pkt *arp = (struct arp_pkt *)skb->data;
	int res = NET_RX_DROP;

	if (FUNC2(bond_dev) != &init_net)
		goto out;

	while (bond_dev->priv_flags & IFF_802_1Q_VLAN)
		bond_dev = FUNC9(bond_dev);

	if (!(bond_dev->priv_flags & IFF_BONDING) ||
	    !(bond_dev->flags & IFF_MASTER))
		goto out;

	if (!arp) {
		FUNC5("Packet has no ARP data\n");
		goto out;
	}

	skb = FUNC8(skb, GFP_ATOMIC);
	if (!skb)
		goto out;

	if (!FUNC6(skb, FUNC0(bond_dev)))
		goto out;

	if (skb->len < sizeof(struct arp_pkt)) {
		FUNC5("Packet is too small to be an ARP\n");
		goto out;
	}

	if (arp->op_code == FUNC3(ARPOP_REPLY)) {
		/* update rx hash table for this ARP */
		bond = FUNC4(bond_dev);
		FUNC7(bond, arp);
		FUNC5("Server received an ARP Reply from client\n");
	}

	res = NET_RX_SUCCESS;

out:
	FUNC1(skb);

	return res;
}