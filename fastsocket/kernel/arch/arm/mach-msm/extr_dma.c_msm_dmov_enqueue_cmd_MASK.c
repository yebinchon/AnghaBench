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
struct msm_dmov_cmd {int /*<<< orphan*/  list; int /*<<< orphan*/  cmdptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  DMOV_CONFIG_IRQ_EN ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned int DMOV_STATUS_CMD_PTR_RDY ; 
 int /*<<< orphan*/  INT_ADM_AARM ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/ * active_commands ; 
 unsigned int channel_active ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  msm_dmov_lock ; 
 unsigned int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ready_commands ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC13(unsigned id, struct msm_dmov_cmd *cmd)
{
	unsigned long irq_flags;
	unsigned int status;

	FUNC10(&msm_dmov_lock, irq_flags);
	status = FUNC9(FUNC2(id));
	if (FUNC8(&ready_commands[id]) &&
		(status & DMOV_STATUS_CMD_PTR_RDY)) {
#if 0
		if (list_empty(&active_commands[id])) {
			PRINT_FLOW("msm_dmov_enqueue_cmd(%d), enable interrupt\n", id);
			writel(DMOV_CONFIG_IRQ_EN, DMOV_CONFIG(id));
		}
#endif
		FUNC5("msm_dmov_enqueue_cmd(%d), start command, status %x\n", id, status);
		FUNC7(&cmd->list, &active_commands[id]);
		if (!channel_active)
			FUNC6(INT_ADM_AARM);
		channel_active |= 1U << id;
		FUNC12(cmd->cmdptr, FUNC0(id));
	} else {
		if (FUNC8(&active_commands[id]))
			FUNC3("msm_dmov_enqueue_cmd(%d), error datamover stalled, status %x\n", id, status);

		FUNC5("msm_dmov_enqueue_cmd(%d), enqueue command, status %x\n", id, status);
		FUNC7(&cmd->list, &ready_commands[id]);
	}
	FUNC11(&msm_dmov_lock, irq_flags);
}