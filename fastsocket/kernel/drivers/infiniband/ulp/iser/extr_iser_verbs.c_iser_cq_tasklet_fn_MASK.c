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
struct iser_rx_desc {int dummy; } ;
struct iser_device {struct ib_cq** rx_cq; } ;
struct iser_cq_desc {int cq_index; struct iser_device* device; } ;
struct iser_conn {int /*<<< orphan*/  post_recv_buf_count; } ;
struct ib_wc {scalar_t__ status; scalar_t__ opcode; int /*<<< orphan*/  vendor_err; scalar_t__ wr_id; scalar_t__ byte_len; TYPE_1__* qp; } ;
struct ib_cq {int dummy; } ;
struct TYPE_2__ {struct iser_conn* qp_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 scalar_t__ IB_WC_RECV ; 
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ IB_WC_WR_FLUSH_ERR ; 
 int FUNC1 (struct ib_cq*,int,struct ib_wc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_cq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 scalar_t__ FUNC4 (struct iser_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct iser_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct iser_rx_desc*,unsigned long,struct iser_conn*) ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	struct iser_cq_desc *cq_desc = (struct iser_cq_desc *)data;
	struct iser_device  *device = cq_desc->device;
	int cq_index = cq_desc->cq_index;
	struct ib_cq	     *cq = device->rx_cq[cq_index];
	 struct ib_wc	     wc;
	 struct iser_rx_desc *desc;
	 unsigned long	     xfer_len;
	struct iser_conn *ib_conn;
	int completed_tx, completed_rx;
	completed_tx = completed_rx = 0;

	while (FUNC1(cq, 1, &wc) == 1) {
		desc	 = (struct iser_rx_desc *) (unsigned long) wc.wr_id;
		FUNC0(desc == NULL);
		ib_conn = wc.qp->qp_context;
		if (wc.status == IB_WC_SUCCESS) {
			if (wc.opcode == IB_WC_RECV) {
				xfer_len = (unsigned long)wc.byte_len;
				FUNC7(desc, xfer_len, ib_conn);
			} else
				FUNC5("expected opcode %d got %d\n",
					IB_WC_RECV, wc.opcode);
		} else {
			if (wc.status != IB_WC_WR_FLUSH_ERR)
				FUNC5("rx id %llx status %d vend_err %x\n",
					wc.wr_id, wc.status, wc.vendor_err);
			ib_conn->post_recv_buf_count--;
			FUNC6(NULL, ib_conn);
		}
		completed_rx++;
		if (!(completed_rx & 63))
			completed_tx += FUNC4(device, cq_index);
	}
	/* #warning "it is assumed here that arming CQ only once its empty" *
	 * " would not cause interrupts to be missed"                       */
	FUNC2(cq, IB_CQ_NEXT_COMP);

	completed_tx += FUNC4(device, cq_index);
	FUNC3("got %d rx %d tx completions\n", completed_rx, completed_tx);
}