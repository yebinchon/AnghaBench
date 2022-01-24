#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_10__ {TYPE_6__* ah; } ;
struct TYPE_11__ {TYPE_1__ ud; } ;
struct ib_send_wr {int num_sge; scalar_t__ opcode; int /*<<< orphan*/  next; TYPE_2__ wr; TYPE_8__* sg_list; } ;
struct qib_swqe {int length; struct qib_sge* sg_list; scalar_t__ ssn; struct ib_send_wr wr; } ;
struct qib_sge {int /*<<< orphan*/  mr; } ;
struct TYPE_12__ {scalar_t__ qp_type; int /*<<< orphan*/  device; int /*<<< orphan*/  pd; } ;
struct qib_qp {size_t state; int s_max_sge; scalar_t__ s_head; scalar_t__ s_size; scalar_t__ s_last; int port_num; int /*<<< orphan*/  s_lock; TYPE_3__ ibqp; int /*<<< orphan*/  s_ssn; int /*<<< orphan*/  s_max_rd_atomic; } ;
struct qib_pd {int dummy; } ;
struct qib_lkey_table {int dummy; } ;
struct TYPE_18__ {TYPE_7__* pport; } ;
struct TYPE_17__ {int length; int addr; } ;
struct TYPE_16__ {int ibmtu; } ;
struct TYPE_15__ {int /*<<< orphan*/  pd; } ;
struct TYPE_14__ {int /*<<< orphan*/  refcount; } ;
struct TYPE_13__ {struct qib_lkey_table lk_table; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 scalar_t__ IB_QPT_RC ; 
 scalar_t__ IB_QPT_UC ; 
 scalar_t__ IB_WR_ATOMIC_CMP_AND_SWP ; 
 unsigned int IB_WR_ATOMIC_FETCH_AND_ADD ; 
 scalar_t__ IB_WR_FAST_REG_MR ; 
 unsigned int IB_WR_RDMA_READ ; 
 scalar_t__ IB_WR_SEND ; 
 scalar_t__ IB_WR_SEND_WITH_IMM ; 
 int QIB_POST_SEND_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_9__* FUNC1 (int /*<<< orphan*/ ) ; 
 struct qib_swqe* FUNC2 (struct qib_qp*,scalar_t__) ; 
 int* ib_qib_state_ops ; 
 scalar_t__ FUNC3 (struct qib_qp*,struct ib_send_wr*) ; 
 int FUNC4 (struct qib_lkey_table*,struct qib_pd*,struct qib_sge*,TYPE_8__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct qib_qp*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_5__* FUNC10 (TYPE_6__*) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ ) ; 
 struct qib_pd* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct qib_qp *qp, struct ib_send_wr *wr,
	int *scheduled)
{
	struct qib_swqe *wqe;
	u32 next;
	int i;
	int j;
	int acc;
	int ret;
	unsigned long flags;
	struct qib_lkey_table *rkt;
	struct qib_pd *pd;

	FUNC8(&qp->s_lock, flags);

	/* Check that state is OK to post send. */
	if (FUNC13(!(ib_qib_state_ops[qp->state] & QIB_POST_SEND_OK)))
		goto bail_inval;

	/* IB spec says that num_sge == 0 is OK. */
	if (wr->num_sge > qp->s_max_sge)
		goto bail_inval;

	/*
	 * Don't allow RDMA reads or atomic operations on UC or
	 * undefined operations.
	 * Make sure buffer is large enough to hold the result for atomics.
	 */
	if (wr->opcode == IB_WR_FAST_REG_MR) {
		if (FUNC3(qp, wr))
			goto bail_inval;
	} else if (qp->ibqp.qp_type == IB_QPT_UC) {
		if ((unsigned) wr->opcode >= IB_WR_RDMA_READ)
			goto bail_inval;
	} else if (qp->ibqp.qp_type != IB_QPT_RC) {
		/* Check IB_QPT_SMI, IB_QPT_GSI, IB_QPT_UD opcode */
		if (wr->opcode != IB_WR_SEND &&
		    wr->opcode != IB_WR_SEND_WITH_IMM)
			goto bail_inval;
		/* Check UD destination address PD */
		if (qp->ibqp.pd != wr->wr.ud.ah->pd)
			goto bail_inval;
	} else if ((unsigned) wr->opcode > IB_WR_ATOMIC_FETCH_AND_ADD)
		goto bail_inval;
	else if (wr->opcode >= IB_WR_ATOMIC_CMP_AND_SWP &&
		   (wr->num_sge == 0 ||
		    wr->sg_list[0].length < sizeof(u64) ||
		    wr->sg_list[0].addr & (sizeof(u64) - 1)))
		goto bail_inval;
	else if (wr->opcode >= IB_WR_RDMA_READ && !qp->s_max_rd_atomic)
		goto bail_inval;

	next = qp->s_head + 1;
	if (next >= qp->s_size)
		next = 0;
	if (next == qp->s_last) {
		ret = -ENOMEM;
		goto bail;
	}

	rkt = &FUNC11(qp->ibqp.device)->lk_table;
	pd = FUNC12(qp->ibqp.pd);
	wqe = FUNC2(qp, qp->s_head);
	wqe->wr = *wr;
	wqe->length = 0;
	j = 0;
	if (wr->num_sge) {
		acc = wr->opcode >= IB_WR_RDMA_READ ?
			IB_ACCESS_LOCAL_WRITE : 0;
		for (i = 0; i < wr->num_sge; i++) {
			u32 length = wr->sg_list[i].length;
			int ok;

			if (length == 0)
				continue;
			ok = FUNC4(rkt, pd, &wqe->sg_list[j],
					 &wr->sg_list[i], acc);
			if (!ok)
				goto bail_inval_free;
			wqe->length += length;
			j++;
		}
		wqe->wr.num_sge = j;
	}
	if (qp->ibqp.qp_type == IB_QPT_UC ||
	    qp->ibqp.qp_type == IB_QPT_RC) {
		if (wqe->length > 0x80000000U)
			goto bail_inval_free;
	} else if (wqe->length > (FUNC1(qp->ibqp.device)->pport +
				  qp->port_num - 1)->ibmtu)
		goto bail_inval_free;
	else
		FUNC0(&FUNC10(wr->wr.ud.ah)->refcount);
	wqe->ssn = qp->s_ssn++;
	qp->s_head = next;

	ret = 0;
	goto bail;

bail_inval_free:
	while (j) {
		struct qib_sge *sge = &wqe->sg_list[--j];

		FUNC5(sge->mr);
	}
bail_inval:
	ret = -EINVAL;
bail:
	if (!ret && !wr->next &&
	 !FUNC7(
	   FUNC1(qp->ibqp.device)->pport + qp->port_num - 1)) {
		FUNC6(qp);
		*scheduled = 1;
	}
	FUNC9(&qp->s_lock, flags);
	return ret;
}