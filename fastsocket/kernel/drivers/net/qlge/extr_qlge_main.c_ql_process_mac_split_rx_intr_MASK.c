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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ ip_summed; scalar_t__ data; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct rx_ring {int /*<<< orphan*/  napi; int /*<<< orphan*/  cq_id; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_dropped; } ;
struct ql_adapter {scalar_t__ vlgrp; struct net_device* ndev; scalar_t__ rx_csum; int /*<<< orphan*/  flags; } ;
struct net_device {scalar_t__ mtu; } ;
struct iphdr {int frag_off; } ;
struct ib_mac_iocb_rsp {int flags2; int flags1; int flags3; } ;

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
 int IB_MAC_IOCB_RSP_V ; 
 int IB_MAC_IOCB_RSP_V4 ; 
 int IP_MF ; 
 int IP_OFFSET ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct ib_mac_iocb_rsp*) ; 
 int /*<<< orphan*/  QL_SELFTEST ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 struct sk_buff* FUNC8 (struct ql_adapter*,struct rx_ring*,struct ib_mac_iocb_rsp*) ; 
 int /*<<< orphan*/  FUNC9 (struct ql_adapter*,int,struct rx_ring*) ; 
 int /*<<< orphan*/  FUNC10 (struct ql_adapter*,struct sk_buff*) ; 
 int /*<<< orphan*/  rx_status ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC16(struct ql_adapter *qdev,
				   struct rx_ring *rx_ring,
				   struct ib_mac_iocb_rsp *ib_mac_rsp,
				   u16 vlan_id)
{
	struct net_device *ndev = qdev->ndev;
	struct sk_buff *skb = NULL;

	FUNC0(ib_mac_rsp);

	skb = FUNC8(qdev, rx_ring, ib_mac_rsp);
	if (FUNC13(!skb)) {
		FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
			     "No skb available, drop packet.\n");
		rx_ring->rx_dropped++;
		return;
	}

	/* Frame error, so drop the packet. */
	if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_ERR_MASK) {
		FUNC9(qdev, ib_mac_rsp->flags2, rx_ring);
		FUNC1(skb);
		return;
	}

	/* The max framesize filter on this chip is set higher than
	 * MTU since FCoE uses 2k frames.
	 */
	if (skb->len > ndev->mtu + ETH_HLEN) {
		FUNC1(skb);
		rx_ring->rx_dropped++;
		return;
	}

	/* loopback self test for ethtool */
	if (FUNC12(QL_SELFTEST, &qdev->flags)) {
		FUNC10(qdev, skb);
		FUNC1(skb);
		return;
	}

	FUNC7(skb->data);
	skb->dev = ndev;
	if (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) {
		FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev, "%s Multicast.\n",
			     (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
			     IB_MAC_IOCB_RSP_M_HASH ? "Hash" :
			     (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
			     IB_MAC_IOCB_RSP_M_REG ? "Registered" :
			     (ib_mac_rsp->flags1 & IB_MAC_IOCB_RSP_M_MASK) ==
			     IB_MAC_IOCB_RSP_M_PROM ? "Promiscuous" : "");
		rx_ring->rx_multicast++;
	}
	if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_P) {
		FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
			     "Promiscuous Packet.\n");
	}

	skb->protocol = FUNC2(skb, ndev);
	skb->ip_summed = CHECKSUM_NONE;

	/* If rx checksum is on, and there are no
	 * csum or frame errors.
	 */
	if (qdev->rx_csum &&
		!(ib_mac_rsp->flags1 & IB_MAC_CSUM_ERR_MASK)) {
		/* TCP frame. */
		if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_T) {
			FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
				     "TCP checksum done!\n");
			skb->ip_summed = CHECKSUM_UNNECESSARY;
		} else if ((ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_U) &&
				(ib_mac_rsp->flags3 & IB_MAC_IOCB_RSP_V4)) {
		/* Unfragmented ipv4 UDP frame. */
			struct iphdr *iph = (struct iphdr *) skb->data;
			if (!(iph->frag_off & FUNC3(IP_MF|IP_OFFSET))) {
				skb->ip_summed = CHECKSUM_UNNECESSARY;
				FUNC5(qdev, rx_status, KERN_DEBUG, qdev->ndev,
					     "TCP checksum done!\n");
			}
		}
	}

	rx_ring->rx_packets++;
	rx_ring->rx_bytes += skb->len;
	FUNC11(skb, rx_ring->cq_id);
	if (skb->ip_summed == CHECKSUM_UNNECESSARY) {
		if (qdev->vlgrp &&
			(ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_V) &&
			(vlan_id != 0))
			FUNC14(&rx_ring->napi, qdev->vlgrp,
				vlan_id, skb);
		else
			FUNC4(&rx_ring->napi, skb);
	} else {
		if (qdev->vlgrp &&
			(ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_V) &&
			(vlan_id != 0))
			FUNC15(skb, qdev->vlgrp, vlan_id);
		else
			FUNC6(skb);
	}
}