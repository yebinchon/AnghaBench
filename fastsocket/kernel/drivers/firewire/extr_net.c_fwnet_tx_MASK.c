#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  unsigned int u16 ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct rfc2734_arp {int /*<<< orphan*/  sip; int /*<<< orphan*/  fifo_lo; int /*<<< orphan*/  fifo_hi; int /*<<< orphan*/  sspd; int /*<<< orphan*/  max_rec; int /*<<< orphan*/  hw_addr_len; } ;
struct TYPE_7__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_2__ stats; int /*<<< orphan*/  broadcast; } ;
struct fwnet_peer {scalar_t__ fifo; unsigned int node_id; unsigned int max_payload; unsigned int datagram_label; int /*<<< orphan*/  speed; scalar_t__ generation; } ;
struct TYPE_9__ {scalar_t__ w1; scalar_t__ w0; } ;
struct fwnet_packet_task {scalar_t__ fifo_addr; unsigned int dest_node; int outstanding_pkts; unsigned int max_payload; TYPE_4__ hdr; struct fwnet_device* dev; struct sk_buff* skb; int /*<<< orphan*/  speed; scalar_t__ generation; } ;
struct fwnet_header {scalar_t__ h_proto; scalar_t__ h_dest; } ;
struct fwnet_device {unsigned int broadcast_xmt_max_payload; unsigned int broadcast_xmt_datagramlabel; int local_fifo; int /*<<< orphan*/  lock; TYPE_1__* card; } ;
struct arphdr {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
typedef  int /*<<< orphan*/  hdr_buf ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  scalar_t__ __be16 ;
struct TYPE_8__ {int /*<<< orphan*/  daddr; } ;
struct TYPE_6__ {int /*<<< orphan*/  link_speed; int /*<<< orphan*/  max_receive; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  ETH_P_ARP ; 
 int /*<<< orphan*/  ETH_P_IP ; 
 int FWNET_ALEN ; 
 scalar_t__ FWNET_NO_FIFO_ADDR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 unsigned int IEEE1394_ALL_NODES ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ RFC2374_FRAG_HDR_SIZE ; 
 scalar_t__ RFC2374_FRAG_OVERHEAD ; 
 unsigned int RFC2374_UNFRAG_HDR_SIZE ; 
 int /*<<< orphan*/  RFC2734_HW_ADDR_LEN ; 
 int /*<<< orphan*/  SCODE_100 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fwnet_packet_task_cache ; 
 struct fwnet_peer* FUNC6 (struct fwnet_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fwnet_packet_task*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC10 (struct sk_buff*) ; 
 struct fwnet_packet_task* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct fwnet_packet_task*) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct fwnet_header*,scalar_t__,int) ; 
 struct fwnet_device* FUNC15 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC22 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static netdev_tx_t FUNC25(struct sk_buff *skb, struct net_device *net)
{
	struct fwnet_header hdr_buf;
	struct fwnet_device *dev = FUNC15(net);
	__be16 proto;
	u16 dest_node;
	unsigned max_payload;
	u16 dg_size;
	u16 *datagram_label_ptr;
	struct fwnet_packet_task *ptask;
	struct fwnet_peer *peer;
	unsigned long flags;

	ptask = FUNC11(fwnet_packet_task_cache, GFP_ATOMIC);
	if (ptask == NULL)
		goto fail;

	skb = FUNC22(skb, GFP_ATOMIC);
	if (!skb)
		goto fail;

	/*
	 * Make a copy of the driver-specific header.
	 * We might need to rebuild the header on tx failure.
	 */
	FUNC14(&hdr_buf, skb->data, sizeof(hdr_buf));
	FUNC21(skb, sizeof(hdr_buf));

	proto = hdr_buf.h_proto;
	dg_size = skb->len;

	/* serialize access to peer, including peer->datagram_label */
	FUNC23(&dev->lock, flags);

	/*
	 * Set the transmission type for the packet.  ARP packets and IP
	 * broadcast packets are sent via GASP.
	 */
	if (FUNC13(hdr_buf.h_dest, net->broadcast, FWNET_ALEN) == 0
	    || proto == FUNC9(ETH_P_ARP)
	    || (proto == FUNC9(ETH_P_IP)
		&& FUNC1(FUNC16(FUNC10(skb)->daddr)))) {
		max_payload        = dev->broadcast_xmt_max_payload;
		datagram_label_ptr = &dev->broadcast_xmt_datagramlabel;

		ptask->fifo_addr   = FWNET_NO_FIFO_ADDR;
		ptask->generation  = 0;
		ptask->dest_node   = IEEE1394_ALL_NODES;
		ptask->speed       = SCODE_100;
	} else {
		__be64 guid = FUNC8((__be64 *)hdr_buf.h_dest);
		u8 generation;

		peer = FUNC6(dev, FUNC2(guid));
		if (!peer || peer->fifo == FWNET_NO_FIFO_ADDR)
			goto fail_unlock;

		generation         = peer->generation;
		dest_node          = peer->node_id;
		max_payload        = peer->max_payload;
		datagram_label_ptr = &peer->datagram_label;

		ptask->fifo_addr   = peer->fifo;
		ptask->generation  = generation;
		ptask->dest_node   = dest_node;
		ptask->speed       = peer->speed;
	}

	/* If this is an ARP packet, convert it */
	if (proto == FUNC9(ETH_P_ARP)) {
		struct arphdr *arp = (struct arphdr *)skb->data;
		unsigned char *arp_ptr = (unsigned char *)(arp + 1);
		struct rfc2734_arp *arp1394 = (struct rfc2734_arp *)skb->data;
		__be32 ipaddr;

		ipaddr = FUNC8((__be32 *)(arp_ptr + FWNET_ALEN));

		arp1394->hw_addr_len    = RFC2734_HW_ADDR_LEN;
		arp1394->max_rec        = dev->card->max_receive;
		arp1394->sspd		= dev->card->link_speed;

		FUNC19(dev->local_fifo >> 32,
				   &arp1394->fifo_hi);
		FUNC20(dev->local_fifo & 0xffffffff,
				   &arp1394->fifo_lo);
		FUNC18(ipaddr, &arp1394->sip);
	}

	ptask->hdr.w0 = 0;
	ptask->hdr.w1 = 0;
	ptask->skb = skb;
	ptask->dev = dev;

	/* Does it all fit in one packet? */
	if (dg_size <= max_payload) {
		FUNC5(&ptask->hdr, FUNC17(proto));
		ptask->outstanding_pkts = 1;
		max_payload = dg_size + RFC2374_UNFRAG_HDR_SIZE;
	} else {
		u16 datagram_label;

		max_payload -= RFC2374_FRAG_OVERHEAD;
		datagram_label = (*datagram_label_ptr)++;
		FUNC4(&ptask->hdr, FUNC17(proto), dg_size,
				  datagram_label);
		ptask->outstanding_pkts = FUNC0(dg_size, max_payload);
		max_payload += RFC2374_FRAG_HDR_SIZE;
	}

	FUNC24(&dev->lock, flags);

	ptask->max_payload = max_payload;
	FUNC7(ptask);

	return NETDEV_TX_OK;

 fail_unlock:
	FUNC24(&dev->lock, flags);
 fail:
	if (ptask)
		FUNC12(fwnet_packet_task_cache, ptask);

	if (skb != NULL)
		FUNC3(skb);

	net->stats.tx_dropped++;
	net->stats.tx_errors++;

	/*
	 * FIXME: According to a patch from 2003-02-26, "returning non-zero
	 * causes serious problems" here, allegedly.  Before that patch,
	 * -ERRNO was returned which is not appropriate under Linux 2.6.
	 * Perhaps more needs to be done?  Stop the queue in serious
	 * conditions and restart it elsewhere?
	 */
	return NETDEV_TX_OK;
}