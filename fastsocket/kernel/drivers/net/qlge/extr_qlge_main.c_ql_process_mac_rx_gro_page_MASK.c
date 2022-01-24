#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct skb_frag_struct {scalar_t__ size; int /*<<< orphan*/  page_offset; int /*<<< orphan*/  page; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  truesize; int /*<<< orphan*/  data_len; int /*<<< orphan*/  len; } ;
struct napi_struct {int /*<<< orphan*/  dev; } ;
struct rx_ring {struct napi_struct napi; int /*<<< orphan*/  cq_id; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct ql_adapter {int /*<<< orphan*/  vlgrp; int /*<<< orphan*/  ndev; } ;
struct ib_mac_iocb_rsp {int flags2; } ;
struct TYPE_4__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  page; int /*<<< orphan*/  va; } ;
struct TYPE_5__ {TYPE_1__ pg_chunk; } ;
struct bq_desc {TYPE_2__ p; } ;
struct TYPE_6__ {int nr_frags; struct skb_frag_struct* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int IB_MAC_IOCB_RSP_ERR_MASK ; 
 int /*<<< orphan*/  drv ; 
 struct sk_buff* FUNC0 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ql_adapter*,int,struct rx_ring*) ; 
 struct bq_desc* FUNC6 (struct ql_adapter*,struct rx_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct napi_struct*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC10(struct ql_adapter *qdev,
					struct rx_ring *rx_ring,
					struct ib_mac_iocb_rsp *ib_mac_rsp,
					u32 length,
					u16 vlan_id)
{
	struct sk_buff *skb;
	struct bq_desc *lbq_desc = FUNC6(qdev, rx_ring);
	struct skb_frag_struct *rx_frag;
	int nr_frags;
	struct napi_struct *napi = &rx_ring->napi;

	/* Frame error, so drop the packet. */
	if (ib_mac_rsp->flags2 & IB_MAC_IOCB_RSP_ERR_MASK) {
		FUNC5(qdev, ib_mac_rsp->flags2, rx_ring);
		FUNC4(lbq_desc->p.pg_chunk.page);
		return;
	}
	napi->dev = qdev->ndev;

	skb = FUNC0(napi);
	if (!skb) {
		FUNC2(qdev, drv, qdev->ndev,
			  "Couldn't get an skb, exiting.\n");
		rx_ring->rx_dropped++;
		FUNC4(lbq_desc->p.pg_chunk.page);
		return;
	}
	FUNC3(lbq_desc->p.pg_chunk.va);
	rx_frag = FUNC8(skb)->frags;
	nr_frags = FUNC8(skb)->nr_frags;
	rx_frag += nr_frags;
	rx_frag->page = lbq_desc->p.pg_chunk.page;
	rx_frag->page_offset = lbq_desc->p.pg_chunk.offset;
	rx_frag->size = length;

	skb->len += length;
	skb->data_len += length;
	skb->truesize += length;
	FUNC8(skb)->nr_frags++;

	rx_ring->rx_packets++;
	rx_ring->rx_bytes += length;
	skb->ip_summed = CHECKSUM_UNNECESSARY;
	FUNC7(skb, rx_ring->cq_id);
	if (vlan_id != 0xffff)
		FUNC9(&rx_ring->napi, qdev->vlgrp, vlan_id);
	else
		FUNC1(napi);
}