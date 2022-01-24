#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct bfa_msgq_cmd_entry {int /*<<< orphan*/  qe; TYPE_1__* msg_hdr; } ;
struct TYPE_6__ {int /*<<< orphan*/  pending_q; } ;
struct bfa_msgq {TYPE_2__ cmdq; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_entries; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  BFA_STATUS_OK ; 
 int /*<<< orphan*/  CMDQ_E_POST ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,struct bfa_msgq_cmd_entry*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bfa_msgq_cmd_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct bfa_msgq *msgq,  struct bfa_msgq_cmd_entry *cmd)
{
	if (FUNC5(cmd->msg_hdr->num_entries) <=
		FUNC0(&msgq->cmdq)) {
		FUNC1(&msgq->cmdq, cmd);
		FUNC3(cmd, BFA_STATUS_OK);
		FUNC2(&msgq->cmdq, CMDQ_E_POST);
	} else {
		FUNC4(&cmd->qe, &msgq->cmdq.pending_q);
	}
}