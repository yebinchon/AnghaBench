#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  max_sges; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_sges; } ;
struct ocrdma_qp {int cap_flags; int /*<<< orphan*/  state; TYPE_2__ rq; TYPE_1__ sq; int /*<<< orphan*/  max_inline_data; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  rq_entry; int /*<<< orphan*/  sq_entry; int /*<<< orphan*/  q_lock; struct ocrdma_pd* pd; } ;
struct ocrdma_pd {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_recv_sge; int /*<<< orphan*/  max_send_sge; int /*<<< orphan*/  max_inline_data; } ;
struct ib_qp_init_attr {TYPE_3__ cap; int /*<<< orphan*/  qp_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCRDMA_QPS_RST ; 
 int OCRDMA_QP_INB_RD ; 
 int OCRDMA_QP_INB_WR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct ocrdma_qp *qp,
				      struct ocrdma_pd *pd,
				      struct ib_qp_init_attr *attrs)
{
	qp->pd = pd;
	FUNC1(&qp->q_lock);
	FUNC0(&qp->sq_entry);
	FUNC0(&qp->rq_entry);

	qp->qp_type = attrs->qp_type;
	qp->cap_flags = OCRDMA_QP_INB_RD | OCRDMA_QP_INB_WR;
	qp->max_inline_data = attrs->cap.max_inline_data;
	qp->sq.max_sges = attrs->cap.max_send_sge;
	qp->rq.max_sges = attrs->cap.max_recv_sge;
	qp->state = OCRDMA_QPS_RST;
}