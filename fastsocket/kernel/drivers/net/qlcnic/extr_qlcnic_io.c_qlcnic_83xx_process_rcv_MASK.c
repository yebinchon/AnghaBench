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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct qlcnic_rx_buffer {int dummy; } ;
struct qlcnic_recv_context {struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_sds_ring {int /*<<< orphan*/  napi; } ;
struct qlcnic_host_rds_ring {int num_desc; int skb_size; struct qlcnic_rx_buffer* rx_buf_arr; } ;
struct TYPE_2__ {int rxbytes; int /*<<< orphan*/  rx_pkts; int /*<<< orphan*/  rxdropped; } ;
struct qlcnic_adapter {size_t max_rds_rings; int flags; TYPE_1__ stats; int /*<<< orphan*/  vlgrp; scalar_t__ mac_learn; struct qlcnic_recv_context* recv_ctx; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int QLCNIC_ESWITCH_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qlcnic_adapter*,struct sk_buff*,int,int) ; 
 int FUNC8 (struct qlcnic_adapter*,struct sk_buff*,int*) ; 
 struct sk_buff* FUNC9 (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct sk_buff*) ; 

__attribute__((used)) static struct qlcnic_rx_buffer *
FUNC13(struct qlcnic_adapter *adapter,
			struct qlcnic_host_sds_ring *sds_ring,
			u8 ring, u64 sts_data[])
{
	struct net_device *netdev = adapter->netdev;
	struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
	struct qlcnic_rx_buffer *buffer;
	struct sk_buff *skb;
	struct qlcnic_host_rds_ring *rds_ring;
	int index, length, cksum, is_lb_pkt;
	u16 vid = 0xffff, t_vid;

	if (FUNC11(ring >= adapter->max_rds_rings))
		return NULL;

	rds_ring = &recv_ctx->rds_rings[ring];

	index = FUNC4(sts_data[0]);
	if (FUNC11(index >= rds_ring->num_desc))
		return NULL;

	buffer = &rds_ring->rx_buf_arr[index];
	length = FUNC6(sts_data[0]);
	cksum  = FUNC3(sts_data[1]);
	skb = FUNC9(adapter, rds_ring, index, cksum);
	if (!skb)
		return buffer;

	if (adapter->mac_learn &&
	    (adapter->flags & QLCNIC_ESWITCH_ENABLED)) {
		t_vid = 0;
		is_lb_pkt = FUNC5(sts_data[1], 0);
		FUNC7(adapter, skb, is_lb_pkt, t_vid);
	}

	if (length > rds_ring->skb_size)
		FUNC10(skb, rds_ring->skb_size);
	else
		FUNC10(skb, length);

	if (FUNC11(FUNC8(adapter, skb, &vid))) {
		adapter->stats.rxdropped++;
		FUNC0(skb);
		return buffer;
	}

	skb->protocol = FUNC1(skb, netdev);
	if (vid != 0xffff)
		FUNC12(&sds_ring->napi, adapter->vlgrp, vid, skb);
	else
		FUNC2(&sds_ring->napi, skb);

	adapter->stats.rx_pkts++;
	adapter->stats.rxbytes += length;

	return buffer;
}