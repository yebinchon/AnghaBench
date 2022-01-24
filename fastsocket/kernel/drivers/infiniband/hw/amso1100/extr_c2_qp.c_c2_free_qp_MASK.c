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
struct TYPE_6__ {int /*<<< orphan*/  shared; int /*<<< orphan*/  peer; } ;
struct TYPE_5__ {int /*<<< orphan*/  shared; int /*<<< orphan*/  peer; } ;
struct TYPE_4__ {int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; } ;
struct c2_qp {int /*<<< orphan*/  refcount; int /*<<< orphan*/  wait; TYPE_3__ rq_mq; TYPE_2__ sq_mq; int /*<<< orphan*/  qpn; TYPE_1__ ibqp; } ;
struct c2_dev {int dummy; } ;
struct c2_cq {int /*<<< orphan*/  cqn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct c2_dev*,struct c2_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct c2_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct c2_cq*,struct c2_cq*) ; 
 int /*<<< orphan*/  FUNC6 (struct c2_cq*,struct c2_cq*) ; 
 int /*<<< orphan*/  FUNC7 (struct c2_dev*,struct c2_qp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct c2_cq* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

void FUNC11(struct c2_dev *c2dev, struct c2_qp *qp)
{
	struct c2_cq *send_cq;
	struct c2_cq *recv_cq;

	send_cq = FUNC9(qp->ibqp.send_cq);
	recv_cq = FUNC9(qp->ibqp.recv_cq);

	/*
	 * Lock CQs here, so that CQ polling code can do QP lookup
	 * without taking a lock.
	 */
	FUNC5(send_cq, recv_cq);
	FUNC4(c2dev, qp->qpn);
	FUNC6(send_cq, recv_cq);

	/*
	 * Destroy qp in the rnic...
	 */
	FUNC7(c2dev, qp);

	/*
	 * Mark any unreaped CQEs as null and void.
	 */
	FUNC2(c2dev, qp, send_cq->cqn);
	if (send_cq != recv_cq)
		FUNC2(c2dev, qp, recv_cq->cqn);
	/*
	 * Unmap the MQs and return the shared pointers
	 * to the message pool.
	 */
	FUNC8(qp->sq_mq.peer);
	FUNC8(qp->rq_mq.peer);
	FUNC3(qp->sq_mq.shared);
	FUNC3(qp->rq_mq.shared);

	FUNC0(&qp->refcount);
	FUNC10(qp->wait, !FUNC1(&qp->refcount));
}