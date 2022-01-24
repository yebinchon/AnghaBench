#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct iser_rx_desc {int /*<<< orphan*/  rx_sg; } ;
struct iser_conn {unsigned int rx_desc_head; int post_recv_buf_count; struct ib_recv_wr* rx_wr; int /*<<< orphan*/  qp; struct iser_rx_desc* rx_descs; } ;
struct ib_recv_wr {unsigned long wr_id; int num_sge; struct ib_recv_wr* next; int /*<<< orphan*/ * sg_list; } ;

/* Variables and functions */
 int ISER_QP_MAX_RECV_DTOS ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ib_recv_wr*,struct ib_recv_wr**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int FUNC2(struct iser_conn *ib_conn, int count)
{
	struct ib_recv_wr *rx_wr, *rx_wr_failed;
	int i, ib_ret;
	unsigned int my_rx_head = ib_conn->rx_desc_head;
	struct iser_rx_desc *rx_desc;

	for (rx_wr = ib_conn->rx_wr, i = 0; i < count; i++, rx_wr++) {
		rx_desc		= &ib_conn->rx_descs[my_rx_head];
		rx_wr->wr_id	= (unsigned long)rx_desc;
		rx_wr->sg_list	= &rx_desc->rx_sg;
		rx_wr->num_sge	= 1;
		rx_wr->next	= rx_wr + 1;
		my_rx_head = (my_rx_head + 1) & (ISER_QP_MAX_RECV_DTOS - 1);
	}

	rx_wr--;
	rx_wr->next = NULL; /* mark end of work requests list */

	ib_conn->post_recv_buf_count += count;
	ib_ret	= FUNC0(ib_conn->qp, ib_conn->rx_wr, &rx_wr_failed);
	if (ib_ret) {
		FUNC1("ib_post_recv failed ret=%d\n", ib_ret);
		ib_conn->post_recv_buf_count -= count;
	} else
		ib_conn->rx_desc_head = my_rx_head;
	return ib_ret;
}