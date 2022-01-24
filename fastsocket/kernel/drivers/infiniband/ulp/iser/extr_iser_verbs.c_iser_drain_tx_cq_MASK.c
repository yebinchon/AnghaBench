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
struct iser_tx_desc {int dummy; } ;
struct iser_device {struct ib_cq** tx_cq; } ;
struct iser_conn {int /*<<< orphan*/  post_send_buf_count; } ;
struct ib_wc {scalar_t__ status; scalar_t__ opcode; int /*<<< orphan*/  vendor_err; scalar_t__ wr_id; TYPE_1__* qp; } ;
struct ib_cq {int dummy; } ;
struct TYPE_2__ {struct iser_conn* qp_context; } ;

/* Variables and functions */
 scalar_t__ IB_WC_SEND ; 
 scalar_t__ IB_WC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct ib_cq*,int,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_tx_desc*,struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct iser_tx_desc*,struct iser_conn*) ; 

__attribute__((used)) static int FUNC5(struct iser_device  *device, int cq_index)
{
	struct ib_cq  *cq = device->tx_cq[cq_index];
	struct ib_wc  wc;
	struct iser_tx_desc *tx_desc;
	struct iser_conn *ib_conn;
	int completed_tx = 0;

	while (FUNC1(cq, 1, &wc) == 1) {
		tx_desc	= (struct iser_tx_desc *) (unsigned long) wc.wr_id;
		ib_conn = wc.qp->qp_context;
		if (wc.status == IB_WC_SUCCESS) {
			if (wc.opcode == IB_WC_SEND)
				FUNC4(tx_desc, ib_conn);
			else
				FUNC2("expected opcode %d got %d\n",
					IB_WC_SEND, wc.opcode);
		} else {
			FUNC2("tx id %llx status %d vend_err %x\n",
				wc.wr_id, wc.status, wc.vendor_err);
			FUNC0(&ib_conn->post_send_buf_count);
			FUNC3(tx_desc, ib_conn);
		}
		completed_tx++;
	}
	return completed_tx;
}