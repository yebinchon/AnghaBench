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
struct bfa_msgq_cmdq {int /*<<< orphan*/  pending_q; scalar_t__ bytes_to_copy; scalar_t__ offset; scalar_t__ token; scalar_t__ flags; scalar_t__ consumer_index; scalar_t__ producer_index; } ;
struct bfa_msgq_cmd_entry {int /*<<< orphan*/  qe; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFA_STATUS_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bfa_msgq_cmd_entry**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bfa_msgq_cmd_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bfa_msgq_cmdq *cmdq)
{
	struct bfa_msgq_cmd_entry *cmdq_ent;

	cmdq->producer_index = 0;
	cmdq->consumer_index = 0;
	cmdq->flags = 0;
	cmdq->token = 0;
	cmdq->offset = 0;
	cmdq->bytes_to_copy = 0;
	while (!FUNC3(&cmdq->pending_q)) {
		FUNC0(&cmdq->pending_q, &cmdq_ent);
		FUNC1(&cmdq_ent->qe);
		FUNC2(cmdq_ent, BFA_STATUS_FAILED);
	}
}