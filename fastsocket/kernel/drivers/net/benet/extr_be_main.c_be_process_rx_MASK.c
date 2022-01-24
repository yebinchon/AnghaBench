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
typedef  int u32 ;
struct napi_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  used; } ;
struct be_queue_info {int /*<<< orphan*/  id; } ;
struct be_rx_obj {TYPE_1__ q; struct be_queue_info cq; struct be_adapter* adapter; } ;
struct be_rx_compl_info {scalar_t__ num_rcvd; scalar_t__ port; int /*<<< orphan*/  pkt_size; } ;
struct be_adapter {scalar_t__ port_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ RX_FRAGS_REFILL_WM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct be_adapter*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct be_rx_obj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct be_rx_obj*,struct be_rx_compl_info*) ; 
 struct be_rx_compl_info* FUNC4 (struct be_rx_obj*) ; 
 int /*<<< orphan*/  FUNC5 (struct be_rx_obj*,struct be_rx_compl_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct be_rx_obj*,struct napi_struct*,struct be_rx_compl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct be_rx_obj*,struct be_rx_compl_info*) ; 
 scalar_t__ FUNC8 (struct be_rx_compl_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct be_adapter*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct be_rx_obj *rxo, struct napi_struct *napi,
			int budget)
{
	struct be_adapter *adapter = rxo->adapter;
	struct be_queue_info *rx_cq = &rxo->cq;
	struct be_rx_compl_info *rxcp;
	u32 work_done;

	for (work_done = 0; work_done < budget; work_done++) {
		rxcp = FUNC4(rxo);
		if (!rxcp)
			break;

		/* Is it a flush compl that has no data */
		if (FUNC10(rxcp->num_rcvd == 0))
			goto loop_continue;

		/* Discard compl with partial DMA Lancer B0 */
		if (FUNC10(!rxcp->pkt_size)) {
			FUNC3(rxo, rxcp);
			goto loop_continue;
		}

		/* On BE drop pkts that arrive due to imperfect filtering in
		 * promiscuous mode on some skews
		 */
		if (FUNC10(rxcp->port != adapter->port_num &&
				!FUNC9(adapter))) {
			FUNC3(rxo, rxcp);
			goto loop_continue;
		}

		if (FUNC8(rxcp))
			FUNC6(rxo, napi, rxcp);
		else
			FUNC5(rxo, rxcp);
loop_continue:
		FUNC7(rxo, rxcp);
	}

	if (work_done) {
		FUNC1(adapter, rx_cq->id, true, work_done);

		if (FUNC0(&rxo->q.used) < RX_FRAGS_REFILL_WM)
			FUNC2(rxo, GFP_ATOMIC);
	}

	return work_done;
}