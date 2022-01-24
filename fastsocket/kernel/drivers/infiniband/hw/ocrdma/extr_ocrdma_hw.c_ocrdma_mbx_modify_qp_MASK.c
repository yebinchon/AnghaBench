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
struct ocrdma_qp {int state; int /*<<< orphan*/  id; } ;
struct ocrdma_mqe {int dummy; } ;
struct TYPE_2__ {int max_sge_recv_flags; int /*<<< orphan*/  id; } ;
struct ocrdma_modify_qp {TYPE_1__ params; int /*<<< orphan*/  flags; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
typedef  enum ib_qp_state { ____Placeholder_ib_qp_state } ib_qp_state ;

/* Variables and functions */
 int ENOMEM ; 
 int IB_QP_STATE ; 
 int /*<<< orphan*/  OCRDMA_CMD_MODIFY_QP ; 
 int OCRDMA_QP_PARAMS_STATE_MASK ; 
 int OCRDMA_QP_PARAMS_STATE_SHIFT ; 
 int /*<<< orphan*/  OCRDMA_QP_PARA_QPS_VALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_modify_qp*) ; 
 struct ocrdma_modify_qp* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ocrdma_dev*,struct ocrdma_mqe*) ; 
 int FUNC4 (struct ocrdma_qp*,struct ocrdma_modify_qp*,struct ib_qp_attr*,int,int) ; 

int FUNC5(struct ocrdma_dev *dev, struct ocrdma_qp *qp,
			 struct ib_qp_attr *attrs, int attr_mask,
			 enum ib_qp_state old_qps)
{
	int status = -ENOMEM;
	struct ocrdma_modify_qp *cmd;

	cmd = FUNC2(OCRDMA_CMD_MODIFY_QP, sizeof(*cmd));
	if (!cmd)
		return status;

	cmd->params.id = qp->id;
	cmd->flags = 0;
	if (attr_mask & IB_QP_STATE) {
		cmd->params.max_sge_recv_flags |=
		    (FUNC0(attrs->qp_state) <<
		     OCRDMA_QP_PARAMS_STATE_SHIFT) &
		    OCRDMA_QP_PARAMS_STATE_MASK;
		cmd->flags |= OCRDMA_QP_PARA_QPS_VALID;
	} else
		cmd->params.max_sge_recv_flags |=
		    (qp->state << OCRDMA_QP_PARAMS_STATE_SHIFT) &
		    OCRDMA_QP_PARAMS_STATE_MASK;
	status = FUNC4(qp, cmd, attrs, attr_mask, old_qps);
	if (status)
		goto mbx_err;
	status = FUNC3(dev, (struct ocrdma_mqe *)cmd);
	if (status)
		goto mbx_err;

mbx_err:
	FUNC1(cmd);
	return status;
}