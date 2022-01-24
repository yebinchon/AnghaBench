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
typedef  scalar_t__ u8 ;
struct sk_buff {int /*<<< orphan*/  data; } ;
struct qlcnic_recv_context {struct qlcnic_host_sds_ring* sds_rings; } ;
struct qlcnic_host_sds_ring {int dummy; } ;
struct qlcnic_adapter {TYPE_2__* pdev; TYPE_1__* ahw; int /*<<< orphan*/  netdev; int /*<<< orphan*/  mac_addr; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ diag_cnt; } ;

/* Variables and functions */
 scalar_t__ QLCNIC_ILB_MODE ; 
 int /*<<< orphan*/  QLCNIC_ILB_PKT_SIZE ; 
 int /*<<< orphan*/  QLCNIC_LB_PKT_POLL_COUNT ; 
 int /*<<< orphan*/  QLCNIC_LB_PKT_POLL_DELAY_MSEC ; 
 int QLCNIC_NUM_ILB_PKT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qlcnic_host_sds_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 

int FUNC9(struct qlcnic_adapter *adapter, u8 mode)
{
	struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;
	struct qlcnic_host_sds_ring *sds_ring = &recv_ctx->sds_rings[0];
	struct sk_buff *skb;
	int i, loop, cnt = 0;

	for (i = 0; i < QLCNIC_NUM_ILB_PKT; i++) {
		skb = FUNC4(adapter->netdev, QLCNIC_ILB_PKT_SIZE);
		FUNC5(skb->data, adapter->mac_addr);
		FUNC8(skb, QLCNIC_ILB_PKT_SIZE);

		adapter->ahw->diag_cnt = 0;
		FUNC7(skb, adapter->netdev);

		loop = 0;
		do {
			FUNC3(QLCNIC_LB_PKT_POLL_DELAY_MSEC);
			FUNC6(sds_ring);
			if (loop++ > QLCNIC_LB_PKT_POLL_COUNT)
				break;
		} while (!adapter->ahw->diag_cnt);

		FUNC1(skb);

		if (!adapter->ahw->diag_cnt)
			FUNC2(&adapter->pdev->dev,
				 "LB Test: packet #%d was not received\n",
				 i + 1);
		else
			cnt++;
	}
	if (cnt != i) {
		FUNC0(&adapter->pdev->dev,
			"LB Test: failed, TX[%d], RX[%d]\n", i, cnt);
		if (mode != QLCNIC_ILB_MODE)
			FUNC2(&adapter->pdev->dev,
				 "WARNING: Please check loopback cable\n");
		return -1;
	}
	return 0;
}