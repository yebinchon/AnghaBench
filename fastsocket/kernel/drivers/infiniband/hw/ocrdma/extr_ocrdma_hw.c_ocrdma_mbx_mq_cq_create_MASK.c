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
struct ocrdma_queue_info {int id; int created; int /*<<< orphan*/  dma; int /*<<< orphan*/  size; int /*<<< orphan*/  va; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; struct ocrdma_create_cq_cmd_rsp* mbx_cmd; } ;
struct ocrdma_create_cq_cmd_rsp {int eqn; int cq_id; int /*<<< orphan*/  pgsz_pgcnt; int /*<<< orphan*/ * pa; int /*<<< orphan*/  ev_cnt_flags; int /*<<< orphan*/  req; } ;
struct ocrdma_create_cq_cmd {int eqn; int cq_id; int /*<<< orphan*/  pgsz_pgcnt; int /*<<< orphan*/ * pa; int /*<<< orphan*/  ev_cnt_flags; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCRDMA_CMD_CREATE_CQ ; 
 int /*<<< orphan*/  OCRDMA_CREATE_CQ_DEF_FLAGS ; 
 int OCRDMA_CREATE_CQ_EQID_SHIFT ; 
 int OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK ; 
 int /*<<< orphan*/  OCRDMA_SUBSYS_COMMON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE_4K ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ocrdma_create_cq_cmd_rsp*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ocrdma_create_cq_cmd_rsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct ocrdma_dev *dev,
				   struct ocrdma_queue_info *cq,
				   struct ocrdma_queue_info *eq)
{
	struct ocrdma_create_cq_cmd *cmd = dev->mbx_cmd;
	struct ocrdma_create_cq_cmd_rsp *rsp = dev->mbx_cmd;
	int status;

	FUNC2(cmd, 0, sizeof(*cmd));
	FUNC4(&cmd->req, OCRDMA_CMD_CREATE_CQ,
			OCRDMA_SUBSYS_COMMON, sizeof(*cmd));

	cmd->pgsz_pgcnt = FUNC0(cq->va, cq->size);
	cmd->ev_cnt_flags = OCRDMA_CREATE_CQ_DEF_FLAGS;
	cmd->eqn = (eq->id << OCRDMA_CREATE_CQ_EQID_SHIFT);

	FUNC3(&cmd->pa[0], cmd->pgsz_pgcnt,
			     cq->dma, PAGE_SIZE_4K);
	status = FUNC1(dev->nic_info.netdev,
				 cmd, sizeof(*cmd), NULL, NULL);
	if (!status) {
		cq->id = (rsp->cq_id & OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK);
		cq->created = true;
	}
	return status;
}