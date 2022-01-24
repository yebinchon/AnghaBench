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
struct bfa_msgq_cmdq {struct bfa_msgq* msgq; int /*<<< orphan*/  pending_q; int /*<<< orphan*/  depth; } ;
struct bfa_msgq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_MSGQ_CMDQ_NUM_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bfa_msgq_cmdq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmdq_sm_stopped ; 

__attribute__((used)) static void
FUNC2(struct bfa_msgq_cmdq *cmdq, struct bfa_msgq *msgq)
{
	cmdq->depth = BFA_MSGQ_CMDQ_NUM_ENTRY;
	FUNC0(&cmdq->pending_q);
	cmdq->msgq = msgq;
	FUNC1(cmdq, cmdq_sm_stopped);
}