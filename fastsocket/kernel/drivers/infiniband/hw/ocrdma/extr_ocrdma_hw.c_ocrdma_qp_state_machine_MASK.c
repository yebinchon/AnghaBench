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
struct ocrdma_qp {int state; int /*<<< orphan*/  q_lock; } ;
typedef  enum ocrdma_qp_state { ____Placeholder_ocrdma_qp_state } ocrdma_qp_state ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;

/* Variables and functions */
 int EINVAL ; 
#define  OCRDMA_QPS_ERR 134 
#define  OCRDMA_QPS_INIT 133 
#define  OCRDMA_QPS_RST 132 
#define  OCRDMA_QPS_RTR 131 
#define  OCRDMA_QPS_RTS 130 
#define  OCRDMA_QPS_SQD 129 
#define  OCRDMA_QPS_SQE 128 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_qp*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct ocrdma_qp *qp, enum ib_qp_state new_ib_state,
			    enum ib_qp_state *old_ib_state)
{
	unsigned long flags;
	int status = 0;
	enum ocrdma_qp_state new_state;
	new_state = FUNC1(new_ib_state);

	/* sync with wqe and rqe posting */
	FUNC3(&qp->q_lock, flags);

	if (old_ib_state)
		*old_ib_state = FUNC0(qp->state);
	if (new_state == qp->state) {
		FUNC4(&qp->q_lock, flags);
		return 1;
	}

	switch (qp->state) {
	case OCRDMA_QPS_RST:
		switch (new_state) {
		case OCRDMA_QPS_RST:
		case OCRDMA_QPS_INIT:
			break;
		default:
			status = -EINVAL;
			break;
		};
		break;
	case OCRDMA_QPS_INIT:
		/* qps: INIT->XXX */
		switch (new_state) {
		case OCRDMA_QPS_INIT:
		case OCRDMA_QPS_RTR:
			break;
		case OCRDMA_QPS_ERR:
			FUNC2(qp);
			break;
		default:
			status = -EINVAL;
			break;
		};
		break;
	case OCRDMA_QPS_RTR:
		/* qps: RTS->XXX */
		switch (new_state) {
		case OCRDMA_QPS_RTS:
			break;
		case OCRDMA_QPS_ERR:
			FUNC2(qp);
			break;
		default:
			status = -EINVAL;
			break;
		};
		break;
	case OCRDMA_QPS_RTS:
		/* qps: RTS->XXX */
		switch (new_state) {
		case OCRDMA_QPS_SQD:
		case OCRDMA_QPS_SQE:
			break;
		case OCRDMA_QPS_ERR:
			FUNC2(qp);
			break;
		default:
			status = -EINVAL;
			break;
		};
		break;
	case OCRDMA_QPS_SQD:
		/* qps: SQD->XXX */
		switch (new_state) {
		case OCRDMA_QPS_RTS:
		case OCRDMA_QPS_SQE:
		case OCRDMA_QPS_ERR:
			break;
		default:
			status = -EINVAL;
			break;
		};
		break;
	case OCRDMA_QPS_SQE:
		switch (new_state) {
		case OCRDMA_QPS_RTS:
		case OCRDMA_QPS_ERR:
			break;
		default:
			status = -EINVAL;
			break;
		};
		break;
	case OCRDMA_QPS_ERR:
		/* qps: ERR->XXX */
		switch (new_state) {
		case OCRDMA_QPS_RST:
			break;
		default:
			status = -EINVAL;
			break;
		};
		break;
	default:
		status = -EINVAL;
		break;
	};
	if (!status)
		qp->state = new_state;

	FUNC4(&qp->q_lock, flags);
	return status;
}