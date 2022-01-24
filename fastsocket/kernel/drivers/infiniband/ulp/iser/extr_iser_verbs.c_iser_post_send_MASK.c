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
struct iser_tx_desc {int /*<<< orphan*/  num_sge; int /*<<< orphan*/  tx_sg; int /*<<< orphan*/  dma_addr; } ;
struct iser_conn {int /*<<< orphan*/  post_send_buf_count; int /*<<< orphan*/  qp; TYPE_1__* device; } ;
struct ib_send_wr {unsigned long wr_id; int /*<<< orphan*/  send_flags; int /*<<< orphan*/  opcode; int /*<<< orphan*/  num_sge; int /*<<< orphan*/  sg_list; int /*<<< orphan*/ * next; } ;
struct TYPE_2__ {int /*<<< orphan*/  ib_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  IB_SEND_SIGNALED ; 
 int /*<<< orphan*/  IB_WR_SEND ; 
 int /*<<< orphan*/  ISER_HEADERS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct ib_send_wr*,struct ib_send_wr**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int FUNC5(struct iser_conn *ib_conn, struct iser_tx_desc *tx_desc)
{
	int		  ib_ret;
	struct ib_send_wr send_wr, *send_wr_failed;

	FUNC2(ib_conn->device->ib_device,
		tx_desc->dma_addr, ISER_HEADERS_LEN, DMA_TO_DEVICE);

	send_wr.next	   = NULL;
	send_wr.wr_id	   = (unsigned long)tx_desc;
	send_wr.sg_list	   = tx_desc->tx_sg;
	send_wr.num_sge	   = tx_desc->num_sge;
	send_wr.opcode	   = IB_WR_SEND;
	send_wr.send_flags = IB_SEND_SIGNALED;

	FUNC1(&ib_conn->post_send_buf_count);

	ib_ret = FUNC3(ib_conn->qp, &send_wr, &send_wr_failed);
	if (ib_ret) {
		FUNC4("ib_post_send failed, ret:%d\n", ib_ret);
		FUNC0(&ib_conn->post_send_buf_count);
	}
	return ib_ret;
}