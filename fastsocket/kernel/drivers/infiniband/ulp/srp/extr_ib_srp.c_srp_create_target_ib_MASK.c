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
struct srp_target_port {struct ib_qp* send_cq; struct ib_qp* recv_cq; struct ib_qp* qp; TYPE_3__* srp_host; } ;
struct TYPE_4__ {int max_recv_sge; int max_send_sge; void* max_recv_wr; void* max_send_wr; } ;
struct ib_qp_init_attr {struct ib_qp* recv_cq; struct ib_qp* send_cq; int /*<<< orphan*/  qp_type; int /*<<< orphan*/  sq_sig_type; TYPE_1__ cap; int /*<<< orphan*/  event_handler; } ;
struct ib_qp {int dummy; } ;
typedef  struct ib_qp ib_cq ;
struct TYPE_6__ {TYPE_2__* srp_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  pd; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_CQ_NEXT_COMP ; 
 int /*<<< orphan*/  IB_QPT_RC ; 
 int /*<<< orphan*/  IB_SIGNAL_ALL_WR ; 
 scalar_t__ FUNC0 (struct ib_qp*) ; 
 int FUNC1 (struct ib_qp*) ; 
 void* SRP_RQ_SIZE ; 
 void* SRP_SQ_SIZE ; 
 struct ib_qp* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct srp_target_port*,void*,int /*<<< orphan*/ ) ; 
 struct ib_qp* FUNC3 (int /*<<< orphan*/ ,struct ib_qp_init_attr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_qp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_qp_init_attr*) ; 
 struct ib_qp_init_attr* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct srp_target_port*,struct ib_qp*) ; 
 int /*<<< orphan*/  srp_qp_event ; 
 int /*<<< orphan*/  srp_recv_completion ; 
 int /*<<< orphan*/  srp_send_completion ; 

__attribute__((used)) static int FUNC10(struct srp_target_port *target)
{
	struct ib_qp_init_attr *init_attr;
	struct ib_cq *recv_cq, *send_cq;
	struct ib_qp *qp;
	int ret;

	init_attr = FUNC8(sizeof *init_attr, GFP_KERNEL);
	if (!init_attr)
		return -ENOMEM;

	recv_cq = FUNC2(target->srp_host->srp_dev->dev,
			       srp_recv_completion, NULL, target, SRP_RQ_SIZE, 0);
	if (FUNC0(recv_cq)) {
		ret = FUNC1(recv_cq);
		goto err;
	}

	send_cq = FUNC2(target->srp_host->srp_dev->dev,
			       srp_send_completion, NULL, target, SRP_SQ_SIZE, 0);
	if (FUNC0(send_cq)) {
		ret = FUNC1(send_cq);
		goto err_recv_cq;
	}

	FUNC6(recv_cq, IB_CQ_NEXT_COMP);

	init_attr->event_handler       = srp_qp_event;
	init_attr->cap.max_send_wr     = SRP_SQ_SIZE;
	init_attr->cap.max_recv_wr     = SRP_RQ_SIZE;
	init_attr->cap.max_recv_sge    = 1;
	init_attr->cap.max_send_sge    = 1;
	init_attr->sq_sig_type         = IB_SIGNAL_ALL_WR;
	init_attr->qp_type             = IB_QPT_RC;
	init_attr->send_cq             = send_cq;
	init_attr->recv_cq             = recv_cq;

	qp = FUNC3(target->srp_host->srp_dev->pd, init_attr);
	if (FUNC0(qp)) {
		ret = FUNC1(qp);
		goto err_send_cq;
	}

	ret = FUNC9(target, qp);
	if (ret)
		goto err_qp;

	if (target->qp)
		FUNC5(target->qp);
	if (target->recv_cq)
		FUNC4(target->recv_cq);
	if (target->send_cq)
		FUNC4(target->send_cq);

	target->qp = qp;
	target->recv_cq = recv_cq;
	target->send_cq = send_cq;

	FUNC7(init_attr);
	return 0;

err_qp:
	FUNC5(qp);

err_send_cq:
	FUNC4(send_cq);

err_recv_cq:
	FUNC4(recv_cq);

err:
	FUNC7(init_attr);
	return ret;
}