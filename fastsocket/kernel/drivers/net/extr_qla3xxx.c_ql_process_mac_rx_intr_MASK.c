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
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  data; } ;
struct ql_rcv_buf_cb {struct sk_buff* skb; } ;
struct ql3_adapter {scalar_t__ device_id; TYPE_2__* ndev; int /*<<< orphan*/  pdev; } ;
struct ib_mac_iocb_rsp {int /*<<< orphan*/  length; } ;
struct TYPE_3__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ QL3022_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  maplen ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_rcv_buf_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ql_rcv_buf_cb* FUNC7 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ql3_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ql3_adapter*,struct ql_rcv_buf_cb*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct ql3_adapter *qdev,
				   struct ib_mac_iocb_rsp *ib_mac_rsp_ptr)
{
	struct ql_rcv_buf_cb *lrg_buf_cb1 = NULL;
	struct ql_rcv_buf_cb *lrg_buf_cb2 = NULL;
	struct sk_buff *skb;
	u16 length = FUNC1(ib_mac_rsp_ptr->length);

	/*
	 * Get the inbound address list (small buffer).
	 */
	FUNC8(qdev);

	if (qdev->device_id == QL3022_DEVICE_ID)
		lrg_buf_cb1 = FUNC7(qdev);

	/* start of second buffer */
	lrg_buf_cb2 = FUNC7(qdev);
	skb = lrg_buf_cb2->skb;

	qdev->ndev->stats.rx_packets++;
	qdev->ndev->stats.rx_bytes += length;

	FUNC10(skb, length);
	FUNC5(qdev->pdev,
			 FUNC3(lrg_buf_cb2, mapaddr),
			 FUNC4(lrg_buf_cb2, maplen),
			 PCI_DMA_FROMDEVICE);
	FUNC6(skb->data);
	skb->ip_summed = CHECKSUM_NONE;
	skb->protocol = FUNC0(skb, qdev->ndev);

	FUNC2(skb);
	lrg_buf_cb2->skb = NULL;

	if (qdev->device_id == QL3022_DEVICE_ID)
		FUNC9(qdev, lrg_buf_cb1);
	FUNC9(qdev, lrg_buf_cb2);
}