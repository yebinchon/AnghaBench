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
typedef  int /*<<< orphan*/  tip ;
struct vxlan_fdb {int dummy; } ;
struct vxlan_dev {int flags; } ;
struct sk_buff {int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  ip_summed; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {int flags; scalar_t__ addr_len; TYPE_1__ stats; } ;
struct neighbour {int nud_state; int /*<<< orphan*/  ha; } ;
struct arphdr {scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; } ;
typedef  int /*<<< orphan*/  sip ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {scalar_t__ remote_ip; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  ARPHRD_IEEE802 ; 
 int /*<<< orphan*/  ARPOP_REPLY ; 
 int /*<<< orphan*/  ARPOP_REQUEST ; 
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int IFF_NOARP ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ NET_RX_DROP ; 
 int NUD_CONNECTED ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int VXLAN_F_L3MISS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct arphdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  arp_tbl ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 TYPE_2__* FUNC5 (struct vxlan_fdb*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct neighbour* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct neighbour*) ; 
 struct vxlan_dev* FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*) ; 
 struct vxlan_fdb* FUNC18 (struct vxlan_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC20(struct net_device *dev, struct sk_buff *skb)
{
	struct vxlan_dev *vxlan = FUNC13(dev);
	struct arphdr *parp;
	u8 *arpptr, *sha;
	__be32 sip, tip;
	struct neighbour *n;

	if (dev->flags & IFF_NOARP)
		goto out;

	if (!FUNC15(skb, FUNC3(dev))) {
		dev->stats.tx_dropped++;
		goto out;
	}
	parp = FUNC2(skb);

	if ((parp->ar_hrd != FUNC7(ARPHRD_ETHER) &&
	     parp->ar_hrd != FUNC7(ARPHRD_IEEE802)) ||
	    parp->ar_pro != FUNC7(ETH_P_IP) ||
	    parp->ar_op != FUNC7(ARPOP_REQUEST) ||
	    parp->ar_hln != dev->addr_len ||
	    parp->ar_pln != 4)
		goto out;
	arpptr = (u8 *)parp + sizeof(struct arphdr);
	sha = arpptr;
	arpptr += dev->addr_len;	/* sha */
	FUNC10(&sip, arpptr, sizeof(sip));
	arpptr += sizeof(sip);
	arpptr += dev->addr_len;	/* tha */
	FUNC10(&tip, arpptr, sizeof(tip));

	if (FUNC8(tip) ||
	    FUNC9(tip))
		goto out;

	n = FUNC11(&arp_tbl, &tip, dev);

	if (n) {
		struct vxlan_fdb *f;
		struct sk_buff	*reply;

		if (!(n->nud_state & NUD_CONNECTED)) {
			FUNC12(n);
			goto out;
		}

		f = FUNC18(vxlan, n->ha);
		if (f && FUNC5(f)->remote_ip == FUNC6(INADDR_ANY)) {
			/* bridge-local neighbor */
			FUNC12(n);
			goto out;
		}

		reply = FUNC1(ARPOP_REPLY, ETH_P_ARP, sip, dev, tip, sha,
				n->ha, sha);

		FUNC12(n);

		FUNC17(reply);
		FUNC0(reply, FUNC16(reply));
		reply->ip_summed = CHECKSUM_UNNECESSARY;
		reply->pkt_type = PACKET_HOST;

		if (FUNC14(reply) == NET_RX_DROP)
			dev->stats.rx_dropped++;
	} else if (vxlan->flags & VXLAN_F_L3MISS)
		FUNC19(dev, tip);
out:
	FUNC4(skb);
	return NETDEV_TX_OK;
}