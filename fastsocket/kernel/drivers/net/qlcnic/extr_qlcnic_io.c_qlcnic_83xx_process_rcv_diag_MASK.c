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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct qlcnic_recv_context {struct qlcnic_host_rds_ring* rds_rings; } ;
struct qlcnic_host_rds_ring {int num_desc; int skb_size; } ;
struct qlcnic_adapter {int max_rds_rings; TYPE_1__* ahw; int /*<<< orphan*/  mac_addr; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  diag_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_CKSUM_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct qlcnic_adapter*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct qlcnic_adapter*,struct qlcnic_host_rds_ring*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int) ; 

void FUNC8(struct qlcnic_adapter *adapter,
				  int ring, u64 sts_data[])
{
	struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
	struct sk_buff *skb;
	struct qlcnic_host_rds_ring *rds_ring;
	int index, length;

	if (FUNC7(ring >= adapter->max_rds_rings))
		return;

	rds_ring = &recv_ctx->rds_rings[ring];
	index = FUNC2(sts_data[0]);
	if (FUNC7(index >= rds_ring->num_desc))
		return;

	length = FUNC3(sts_data[0]);

	skb = FUNC5(adapter, rds_ring, index, STATUS_CKSUM_OK);
	if (!skb)
		return;

	if (length > rds_ring->skb_size)
		FUNC6(skb, rds_ring->skb_size);
	else
		FUNC6(skb, length);

	if (!FUNC4(skb->data, adapter->mac_addr))
		adapter->ahw->diag_cnt++;
	else
		FUNC1(skb, adapter);

	FUNC0(skb);
	return;
}