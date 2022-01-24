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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; scalar_t__ data; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct rx_ring {int /*<<< orphan*/  napi; int /*<<< orphan*/  cq_id; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct ql_adapter {int /*<<< orphan*/  vlgrp; struct net_device* ndev; scalar_t__ rx_csum; int /*<<< orphan*/  flags; } ;
struct net_device {scalar_t__ mtu; } ;
struct iphdr {int frag_off; } ;
struct ib_mac_iocb_rsp {int flags2; int flags1; int flags3; } ;
struct TYPE_2__ {struct sk_buff* skb; } ;
struct bq_desc {TYPE_1__ p; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 scalar_t__ CHECKSUM_UNNECESSARY ; 
 scalar_t__ ETH_HLEN ; 
 int IB_MAC_CSUM_ERR_MASK ; 
 int IB_MAC_IOCB_RSP_ERR_MASK ; 
 int IB_MAC_IOCB_RSP_M_HASH ; 
 int IB_MAC_IOCB_RSP_M_MASK ; 
 int IB_MAC_IOCB_RSP_M_PROM ; 
 int IB_MAC_IOCB_RSP_M_REG ; 
 int IB_MAC_IOCB_RSP_P ; 
 int IB_MAC_IOCB_RSP_T ; 
 int IB_MAC_IOCB_RSP_U ; 
 int IB_MAC_IOCB_RSP_V4 ; 
 int IP_MF ; 
 int IP_OFFSET ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ NET_IP_ALIGN ; 
 int /*<<< orphan*/  QL_SELFTEST ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC5 (struct net_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct ql_adapter*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  probe ; 
 int /*<<< orphan*/  FUNC10 (struct ql_adapter*,int,struct rx_ring*) ; 
 int /*<<< orphan*/  FUNC11 (struct ql_adapter*,struct sk_buff*) ; 
 struct bq_desc* FUNC12 (struct rx_ring*) ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC19(struct ql_adapter *qdev,
					struct rx_ring *rx_ring,
					struct ib_mac_iocb_rsp *ib_mac_rsp,
					u32 length,
					u16 vlan_id)
{
	struct net_device *ndev = qdev->ndev;
	struct sk_buff *skb = NULL;
	struct sk_buff *new_skb = NULL;
	struct bq_desc *sbq_desc = FUNC12(rx_ring);

	skb = sbq_desc->p.skb;
	/* Allocate new_skb and copy */
	new_skb = FUNC5(qdev->ndev, length + NET_IP_ALIGN);
	if (new_skb == NULL) {
		FUNC6(qdev, probe, qdev->ndev,
			  "No skb available, drop the packet.\n");
		rx_ring->rx_dropped++;
		return;
	}
	FUNC15(new_skb, NET_IP_ALIGN);
	FUNC3(FUNC13(new_skb, length), skb->data, length);
	skb = new_skb;

	/* Frame error, so drop the packet. */
	if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_ERR_MASK) {
		FUNC10(qdev, ib_mac_rsp->flags2, rx_ring);
		FUNC0(skb);
		return;
	}

	/* loopback self test for ethtool */
	if (FUNC16(QL_SELFTEST, &qdev->flags)) {
		FUNC11(qdev, skb);
		FUNC0(skb);
		return;
	}

	/* The max framesize filter on this chip is set higher than
	 * MTU since FCoE uses 2k frames.
	 */
	if (skb->len > ndev->mtu + ETH_HLEN) {
		FUNC0(skb);
		rx_ring->rx_dropped++;
		return;
	}

	FUNC9(skb->data);
	skb->dev = ndev;
	if (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) {
		FUNC7(qdev, rx_status, KERN_DEBUG, qdev->ndev,
			     "%s Multicast.\n",
			     (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
			     IB_MAC_IOCB_RSP_M_HASH ? "Hash" :
			     (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
			     IB_MAC_IOCB_RSP_M_REG ? "Registered" :
			     (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
			     IB_MAC_IOCB_RSP_M_PROM ? "Promiscuous" : "");
	}
	if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_P)
		FUNC7(qdev, rx_status, KERN_DEBUG, qdev->ndev,
			     "Promiscuous Packet.\n");

	rx_ring->rx_packets++;
	rx_ring->rx_bytes += skb->len;
	skb->protocol = FUNC1(skb, ndev);
	skb->ip_summed = CHECKSUM_NONE;

	/* If rx checksum is on, and there are no
	 * csum or frame errors.
	 */
	if (qdev->rx_csum &&
		!(ib_mac_rsp->flags1 & IB_MAC_CSUM_ERR_MASK)) {
		/* TCP frame. */
		if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_T) {
			FUNC7(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "TCP checksum done!\n");
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		} else if ((ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_U) &&
				(ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_V4)) {
			/* Unfragmented ipv4 UDP frame. */
			struct iphdr *iph = (struct iphdr *) skb->data;
			if (!(iph->frag_off & FUNC2(IP_MF|IP_OFFSET))) {
				skb->ip_summed = CHECKSUM_UNNECESSARY;
				FUNC7(qdev, rx_status, KERN_DEBUG,
					     qdev->ndev,
					     "UDP checksum done!\n");
			}
		}
	}

	FUNC14(skb, rx_ring->cq_id);
	if (skb->ip_summed == CHECKSUM_UNNECESSARY) {
		if (vlan_id != 0xffff)
			FUNC17(&rx_ring->napi, qdev->vlgrp,
						vlan_id, skb);
		else
			FUNC4(&rx_ring->napi, skb);
	} else {
		if (vlan_id != 0xffff)
			FUNC18(skb, qdev->vlgrp, vlan_id);
		else
			FUNC8(skb);
	}
}