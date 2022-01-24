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
struct sk_buff {unsigned int len; int /*<<< orphan*/  dev; int /*<<< orphan*/  ip_summed; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct macvlan_port {int dummy; } ;
struct macvlan_dev {scalar_t__ mode; int (* forward ) (int /*<<< orphan*/ ,struct sk_buff*) ;int /*<<< orphan*/  lowerdev; int /*<<< orphan*/  dev; struct macvlan_port* port; } ;
struct ethhdr {int /*<<< orphan*/  h_dest; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 unsigned int ETH_HLEN ; 
 scalar_t__ MACVLAN_MODE_BRIDGE ; 
 int NET_RX_SUCCESS ; 
 int NET_XMIT_SUCCESS ; 
 int FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct macvlan_port const*,struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct macvlan_dev const*,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct macvlan_dev* FUNC4 (struct macvlan_port const*,int /*<<< orphan*/ ) ; 
 struct macvlan_dev* FUNC5 (struct net_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct net_device *dev)
{
	const struct macvlan_dev *vlan = FUNC5(dev);
	const struct macvlan_port *port = vlan->port;
	const struct macvlan_dev *dest;
	__u8 ip_summed = skb->ip_summed;

	if (vlan->mode == MACVLAN_MODE_BRIDGE) {
		const struct ethhdr *eth = (void *)skb->data;
		skb->ip_summed = CHECKSUM_UNNECESSARY;

		/* send to other bridge ports directly */
		if (FUNC1(eth->h_dest)) {
			FUNC2(skb, port, dev, MACVLAN_MODE_BRIDGE);
			goto xmit_world;
		}

		dest = FUNC4(port, eth->h_dest);
		if (dest && dest->mode == MACVLAN_MODE_BRIDGE) {
			unsigned int length = skb->len + ETH_HLEN;
			int ret = dest->forward(dest->dev, skb);
			FUNC3(dest, length,
					 ret == NET_RX_SUCCESS, 0);

			return NET_XMIT_SUCCESS;
		}
	}

xmit_world:
	skb->ip_summed = ip_summed;
	skb->dev = vlan->lowerdev;
	return FUNC0(skb);
}