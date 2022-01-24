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
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct nx_host_sds_ring {int /*<<< orphan*/  napi; } ;
struct nx_host_rds_ring {int num_desc; int skb_size; struct netxen_rx_buffer* rx_buf_arr; } ;
struct netxen_rx_buffer {int dummy; } ;
struct netxen_recv_context {struct nx_host_rds_ring* rds_rings; } ;
struct TYPE_2__ {int rxbytes; int /*<<< orphan*/  rx_pkts; } ;
struct netxen_adapter {int max_rds_rings; TYPE_1__ stats; scalar_t__ vlgrp; struct netxen_recv_context recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct ethhdr {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int VLAN_HLEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct ethhdr*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (struct netxen_adapter*,struct nx_host_rds_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,int,struct sk_buff*) ; 

__attribute__((used)) static struct netxen_rx_buffer *
FUNC13(struct netxen_adapter *adapter,
		struct nx_host_sds_ring *sds_ring,
		int ring, u64 sts_data0)
{
	struct net_device *netdev = adapter->netdev;
	struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;
	struct netxen_rx_buffer *buffer;
	struct sk_buff *skb;
	struct nx_host_rds_ring *rds_ring;
	struct ethhdr *eth_hdr;
	int index, length, cksum, pkt_offset;
	u16 vid = 0xffff;

	if (FUNC11(ring >= adapter->max_rds_rings))
		return NULL;

	rds_ring = &recv_ctx->rds_rings[ring];

	index = FUNC5(sts_data0);
	if (FUNC11(index >= rds_ring->num_desc))
		return NULL;

	buffer = &rds_ring->rx_buf_arr[index];

	length = FUNC7(sts_data0);
	cksum  = FUNC6(sts_data0);
	pkt_offset = FUNC4(sts_data0);

	skb = FUNC8(adapter, rds_ring, index, cksum);
	if (!skb)
		return buffer;

	if (length > rds_ring->skb_size)
		FUNC10(skb, rds_ring->skb_size);
	else
		FUNC10(skb, length);


	if (pkt_offset)
		FUNC9(skb, pkt_offset);

	if (adapter->vlgrp) {
		if (!FUNC0(skb, &vid)) {
			eth_hdr = (struct ethhdr *) skb->data;
			FUNC2(skb->data + VLAN_HLEN, eth_hdr, ETH_ALEN * 2);
			FUNC9(skb, VLAN_HLEN);
		}
	}

	skb->protocol = FUNC1(skb, netdev);

	if (vid != 0xffff)
		FUNC12(&sds_ring->napi, adapter->vlgrp, vid, skb);
	else
		FUNC3(&sds_ring->napi, skb);

	adapter->stats.rx_pkts++;
	adapter->stats.rxbytes += length;

	return buffer;
}