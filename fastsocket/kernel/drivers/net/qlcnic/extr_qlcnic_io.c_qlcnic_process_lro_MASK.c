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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct tcphdr {int doff; int psh; int /*<<< orphan*/  seq; } ;
struct sk_buff {int len; scalar_t__ data; int /*<<< orphan*/  protocol; } ;
struct qlcnic_rx_buffer {int dummy; } ;
struct qlcnic_recv_context {struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_rds_ring {int num_desc; struct qlcnic_rx_buffer* rx_buf_arr; } ;
struct TYPE_3__ {int /*<<< orphan*/  lrobytes; int /*<<< orphan*/  lro_pkts; int /*<<< orphan*/  rxdropped; } ;
struct qlcnic_adapter {int max_rds_rings; int flags; TYPE_1__ stats; int /*<<< orphan*/  vlgrp; scalar_t__ mac_learn; struct qlcnic_recv_context* recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct ipv6hdr {void* payload_len; } ;
struct iphdr {int ihl; scalar_t__ check; void* tot_len; } ;
struct TYPE_4__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 scalar_t__ ETH_P_IPV6 ; 
 int QLCNIC_ESWITCH_ENABLED ; 
 int QLCNIC_FW_LRO_MSS_CAP ; 
 int QLC_TCP_HDR_SIZE ; 
 int QLC_TCP_TS_HDR_SIZE ; 
 int /*<<< orphan*/  STATUS_CKSUM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qlcnic_adapter*,struct sk_buff*,int,int) ; 
 int FUNC9 (struct qlcnic_adapter*,struct sk_buff*,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC18 (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC21 (struct sk_buff*) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct qlcnic_rx_buffer *
FUNC24(struct qlcnic_adapter *adapter,
		   int ring, u64 sts_data0, u64 sts_data1)
{
	struct net_device *netdev = adapter->netdev;
	struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
	struct qlcnic_rx_buffer *buffer;
	struct sk_buff *skb;
	struct qlcnic_host_rds_ring *rds_ring;
	struct iphdr *iph;
	struct ipv6hdr *ipv6h;
	struct tcphdr *th;
	bool push, timestamp;
	int index, l2_hdr_offset, l4_hdr_offset, is_lb_pkt;
	u16 lro_length, length, data_offset, t_vid, vid = 0xffff;
	u32 seq_number;

	if (FUNC22(ring > adapter->max_rds_rings))
		return NULL;

	rds_ring = &recv_ctx->rds_rings[ring];

	index = FUNC15(sts_data0);
	if (FUNC22(index > rds_ring->num_desc))
		return NULL;

	buffer = &rds_ring->rx_buf_arr[index];

	timestamp = FUNC17(sts_data0);
	lro_length = FUNC12(sts_data0);
	l2_hdr_offset = FUNC10(sts_data0);
	l4_hdr_offset = FUNC11(sts_data0);
	push = FUNC14(sts_data0);
	seq_number = FUNC16(sts_data1);

	skb = FUNC18(adapter, rds_ring, index, STATUS_CKSUM_OK);
	if (!skb)
		return buffer;

	if (adapter->mac_learn &&
	    (adapter->flags & QLCNIC_ESWITCH_ENABLED)) {
		t_vid = 0;
		is_lb_pkt = FUNC7(sts_data0);
		FUNC8(adapter, skb, is_lb_pkt, t_vid);
	}

	if (timestamp)
		data_offset = l4_hdr_offset + QLC_TCP_TS_HDR_SIZE;
	else
		data_offset = l4_hdr_offset + QLC_TCP_HDR_SIZE;

	FUNC20(skb, lro_length + data_offset);
	FUNC19(skb, l2_hdr_offset);

	if (FUNC22(FUNC9(adapter, skb, &vid))) {
		adapter->stats.rxdropped++;
		FUNC0(skb);
		return buffer;
	}

	skb->protocol = FUNC1(skb, netdev);

	if (FUNC6(skb->protocol) == ETH_P_IPV6) {
		ipv6h = (struct ipv6hdr *)skb->data;
		th = (struct tcphdr *)(skb->data + sizeof(struct ipv6hdr));
		length = (th->doff << 2) + lro_length;
		ipv6h->payload_len = FUNC3(length);
	} else {
		iph = (struct iphdr *)skb->data;
		th = (struct tcphdr *)(skb->data + (iph->ihl << 2));
		length = (iph->ihl << 2) + (th->doff << 2) + lro_length;
		iph->tot_len = FUNC3(length);
		iph->check = 0;
		iph->check = FUNC4((unsigned char *)iph, iph->ihl);
	}

	th->psh = push;
	th->seq = FUNC2(seq_number);
	length = skb->len;

	if (adapter->flags & QLCNIC_FW_LRO_MSS_CAP)
		FUNC21(skb)->gso_size = FUNC13(sts_data1);

	if (vid != 0xffff)
		FUNC23(skb, adapter->vlgrp, vid);
	else
		FUNC5(skb);

	adapter->stats.lro_pkts++;
	adapter->stats.lrobytes += length;

	return buffer;
}