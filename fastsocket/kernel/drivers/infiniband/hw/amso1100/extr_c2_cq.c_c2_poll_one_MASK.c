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
struct ib_wc {int byte_len; int /*<<< orphan*/  opcode; scalar_t__ pkey_index; scalar_t__ dlid_path_bits; scalar_t__ src_qp; scalar_t__ sl; scalar_t__ slid; scalar_t__ wc_flags; int /*<<< orphan*/ * qp; int /*<<< orphan*/  wr_id; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; } ;
struct c2wr_ce {int /*<<< orphan*/  bytes_rcvd; TYPE_1__ hdr; scalar_t__ qp_user_context; } ;
struct c2_qp {int /*<<< orphan*/  sq_mq; int /*<<< orphan*/  rq_mq; int /*<<< orphan*/  ibqp; } ;
struct c2_dev {int dummy; } ;
struct c2_cq {int /*<<< orphan*/  mq; } ;

/* Variables and functions */
#define  C2_WR_TYPE_BIND_MW 132 
#define  C2_WR_TYPE_RDMA_READ 131 
#define  C2_WR_TYPE_RDMA_WRITE 130 
#define  C2_WR_TYPE_RECV 129 
#define  C2_WR_TYPE_SEND 128 
 int EAGAIN ; 
 int /*<<< orphan*/  IB_WC_BIND_MW ; 
 int /*<<< orphan*/  IB_WC_RDMA_READ ; 
 int /*<<< orphan*/  IB_WC_RDMA_WRITE ; 
 int /*<<< orphan*/  IB_WC_RECV ; 
 int /*<<< orphan*/  IB_WC_SEND ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct c2wr_ce* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct c2wr_ce*) ; 
 int /*<<< orphan*/  FUNC6 (struct c2wr_ce*) ; 
 int /*<<< orphan*/  FUNC7 (struct c2wr_ce*) ; 

__attribute__((used)) static inline int FUNC8(struct c2_dev *c2dev,
			      struct c2_cq *cq, struct ib_wc *entry)
{
	struct c2wr_ce *ce;
	struct c2_qp *qp;
	int is_recv = 0;

	ce = FUNC2(&cq->mq);
	if (!ce) {
		return -EAGAIN;
	}

	/*
	 * if the qp returned is null then this qp has already
	 * been freed and we are unable process the completion.
	 * try pulling the next message
	 */
	while ((qp =
		(struct c2_qp *) (unsigned long) ce->qp_user_context) == NULL) {
		FUNC3(&cq->mq);
		ce = FUNC2(&cq->mq);
		if (!ce)
			return -EAGAIN;
	}

	entry->status = FUNC1(FUNC6(ce));
	entry->wr_id = ce->hdr.context;
	entry->qp = &qp->ibqp;
	entry->wc_flags = 0;
	entry->slid = 0;
	entry->sl = 0;
	entry->src_qp = 0;
	entry->dlid_path_bits = 0;
	entry->pkey_index = 0;

	switch (FUNC5(ce)) {
	case C2_WR_TYPE_SEND:
		entry->opcode = IB_WC_SEND;
		break;
	case C2_WR_TYPE_RDMA_WRITE:
		entry->opcode = IB_WC_RDMA_WRITE;
		break;
	case C2_WR_TYPE_RDMA_READ:
		entry->opcode = IB_WC_RDMA_READ;
		break;
	case C2_WR_TYPE_BIND_MW:
		entry->opcode = IB_WC_BIND_MW;
		break;
	case C2_WR_TYPE_RECV:
		entry->byte_len = FUNC0(ce->bytes_rcvd);
		entry->opcode = IB_WC_RECV;
		is_recv = 1;
		break;
	default:
		break;
	}

	/* consume the WQEs */
	if (is_recv)
		FUNC4(&qp->rq_mq, 1);
	else
		FUNC4(&qp->sq_mq,
			       FUNC0(FUNC7(ce)) + 1);

	/* free the message */
	FUNC3(&cq->mq);

	return 0;
}