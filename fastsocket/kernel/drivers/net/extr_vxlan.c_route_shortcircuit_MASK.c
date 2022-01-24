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
struct vxlan_dev {int flags; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  addr_len; } ;
struct neighbour {int /*<<< orphan*/  ha; } ;
struct iphdr {int /*<<< orphan*/  daddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_proto; } ;

/* Variables and functions */
#define  ETH_P_IP 128 
 int VXLAN_F_L3MISS ; 
 int /*<<< orphan*/  arp_tbl ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 struct iphdr* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct neighbour* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct neighbour*) ; 
 struct vxlan_dev* FUNC7 (struct net_device*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct net_device *dev, struct sk_buff *skb)
{
	struct vxlan_dev *vxlan = FUNC7(dev);
	struct neighbour *n;
	struct iphdr *pip;

	if (FUNC3(FUNC1(skb)->h_dest))
		return false;

	n = NULL;
	switch (FUNC8(FUNC1(skb)->h_proto)) {
	case ETH_P_IP:
		if (!FUNC9(skb, sizeof(struct iphdr)))
			return false;
		pip = FUNC2(skb);
		n = FUNC5(&arp_tbl, &pip->daddr, dev);
		break;
	default:
		return false;
	}

	if (n) {
		bool diff;

		diff = FUNC0(FUNC1(skb)->h_dest, n->ha) != 0;
		if (diff) {
			FUNC4(FUNC1(skb)->h_source, FUNC1(skb)->h_dest,
				dev->addr_len);
			FUNC4(FUNC1(skb)->h_dest, n->ha, dev->addr_len);
		}
		FUNC6(n);
		return diff;
	} else if (vxlan->flags & VXLAN_F_L3MISS)
		FUNC10(dev, pip->daddr);
	return false;
}