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
typedef  scalar_t__ u16 ;
struct be_rx_page_info {int /*<<< orphan*/  page; } ;
struct be_queue_info {scalar_t__ head; scalar_t__ len; scalar_t__ tail; int /*<<< orphan*/  used; int /*<<< orphan*/  id; } ;
struct be_rx_obj {struct be_adapter* adapter; struct be_queue_info cq; struct be_queue_info q; } ;
struct be_rx_compl_info {scalar_t__ num_rcvd; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct be_adapter*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct be_rx_obj*,struct be_rx_compl_info*) ; 
 struct be_rx_compl_info* FUNC5 (struct be_rx_obj*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 struct be_rx_page_info* FUNC7 (struct be_rx_obj*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct be_rx_page_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct be_rx_obj *rxo)
{
	struct be_rx_page_info *page_info;
	struct be_queue_info *rxq = &rxo->q;
	struct be_queue_info *rx_cq = &rxo->cq;
	struct be_rx_compl_info *rxcp;
	struct be_adapter *adapter = rxo->adapter;
	int flush_wait = 0;
	u16 tail;

	/* Consume pending rx completions.
	 * Wait for the flush completion (identified by zero num_rcvd)
	 * to arrive. Notify CQ even when there are no more CQ entries
	 * for HW to flush partially coalesced CQ entries.
	 * In Lancer, there is no need to wait for flush compl.
	 */
	for (;;) {
		rxcp = FUNC5(rxo);
		if (rxcp == NULL) {
			if (FUNC9(adapter))
				break;

			if (flush_wait++ > 10 || FUNC3(adapter)) {
				FUNC6(&adapter->pdev->dev,
					 "did not receive flush compl\n");
				break;
			}
			FUNC2(adapter, rx_cq->id, true, 0);
			FUNC10(1);
		} else {
			FUNC4(rxo, rxcp);
			FUNC2(adapter, rx_cq->id, false, 1);
			if (rxcp->num_rcvd == 0)
				break;
		}
	}

	/* After cleanup, leave the CQ in unarmed state */
	FUNC2(adapter, rx_cq->id, false, 0);

	/* Then free posted rx buffers that were not used */
	tail = (rxq->head + rxq->len - FUNC1(&rxq->used)) % rxq->len;
	for (; FUNC1(&rxq->used) > 0; FUNC8(&tail, rxq->len)) {
		page_info = FUNC7(rxo, tail);
		FUNC12(page_info->page);
		FUNC11(page_info, 0, sizeof(*page_info));
	}
	FUNC0(FUNC1(&rxq->used));
	rxq->tail = rxq->head = 0;
}