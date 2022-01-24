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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct tcphdr {int doff; int psh; int /*<<< orphan*/  seq; } ;
struct sk_buff {int len; scalar_t__ data; scalar_t__ protocol; } ;
struct nx_host_sds_ring {int dummy; } ;
struct nx_host_rds_ring {int num_desc; struct netxen_rx_buffer* rx_buf_arr; } ;
struct netxen_rx_buffer {int dummy; } ;
struct netxen_recv_context {struct nx_host_rds_ring* rds_rings; } ;
struct TYPE_3__ {int /*<<< orphan*/  rxbytes; int /*<<< orphan*/  lro_pkts; } ;
struct netxen_adapter {int max_rds_rings; int flags; TYPE_1__ stats; scalar_t__ vlgrp; struct netxen_recv_context recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct iphdr {int ihl; scalar_t__ check; scalar_t__ tot_len; } ;
struct ethhdr {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int ETH_P_8021Q ; 
 int NETXEN_FW_MSS_CAP ; 
 int /*<<< orphan*/  STATUS_CKSUM_OK ; 
 int TCP_HDR_SIZE ; 
 int TCP_TS_HDR_SIZE ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,struct ethhdr*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC15 (struct netxen_adapter*,struct nx_host_rds_ring*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 TYPE_2__* FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,scalar_t__,int) ; 

__attribute__((used)) static struct netxen_rx_buffer *
FUNC21(struct netxen_adapter *adapter,
		struct nx_host_sds_ring *sds_ring,
		int ring, u64 sts_data0, u64 sts_data1)
{
	struct net_device *netdev = adapter->netdev;
	struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;
	struct netxen_rx_buffer *buffer;
	struct sk_buff *skb;
	struct nx_host_rds_ring *rds_ring;
	struct iphdr *iph;
	struct tcphdr *th;
	struct ethhdr *eth_hdr;
	bool push, timestamp;
	int l2_hdr_offset, l4_hdr_offset;
	int index;
	u16 lro_length, length, data_offset;
	u32 seq_number;
	u16 vid = 0xffff;
	u8 vhdr_len = 0;

	if (FUNC19(ring > adapter->max_rds_rings))
		return NULL;

	rds_ring = &recv_ctx->rds_rings[ring];

	index = FUNC12(sts_data0);
	if (FUNC19(index > rds_ring->num_desc))
		return NULL;

	buffer = &rds_ring->rx_buf_arr[index];

	timestamp = FUNC14(sts_data0);
	lro_length = FUNC9(sts_data0);
	l2_hdr_offset = FUNC7(sts_data0);
	l4_hdr_offset = FUNC8(sts_data0);
	push = FUNC11(sts_data0);
	seq_number = FUNC13(sts_data1);

	skb = FUNC15(adapter, rds_ring, index, STATUS_CKSUM_OK);
	if (!skb)
		return buffer;

	if (timestamp)
		data_offset = l4_hdr_offset + TCP_TS_HDR_SIZE;
	else
		data_offset = l4_hdr_offset + TCP_HDR_SIZE;

	FUNC17(skb, lro_length + data_offset);

	FUNC16(skb, l2_hdr_offset);

	if (adapter->vlgrp) {
		if (!FUNC0(skb, &vid)) {
			eth_hdr = (struct ethhdr *) skb->data;
			FUNC5(skb->data + VLAN_HLEN, eth_hdr, ETH_ALEN * 2);
			FUNC16(skb, VLAN_HLEN);
		}
	} else {
		if (skb->protocol == FUNC3(ETH_P_8021Q))
			vhdr_len = VLAN_HLEN;
	}

	skb->protocol = FUNC1(skb, netdev);

	iph = (struct iphdr *)(skb->data + vhdr_len);
	th = (struct tcphdr *)((skb->data + vhdr_len) + (iph->ihl << 2));

	length = (iph->ihl << 2) + (th->doff << 2) + lro_length;
	iph->tot_len = FUNC3(length);
	iph->check = 0;
	iph->check = FUNC4((unsigned char *)iph, iph->ihl);
	th->psh = push;
	th->seq = FUNC2(seq_number);

	length = skb->len;

	if (adapter->flags & NETXEN_FW_MSS_CAP)
		FUNC18(skb)->gso_size  =  FUNC10(sts_data1);

	if ((vid != 0xffff))
		FUNC20(skb, adapter->vlgrp, vid);
	else
		FUNC6(skb);

	adapter->stats.lro_pkts++;
	adapter->stats.rxbytes += length;

	return buffer;
}