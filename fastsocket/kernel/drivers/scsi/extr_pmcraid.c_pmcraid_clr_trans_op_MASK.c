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
struct TYPE_5__ {int /*<<< orphan*/  ioa_host_interrupt_clr_reg; int /*<<< orphan*/  ioa_host_interrupt_mask_reg; } ;
struct pmcraid_instance {TYPE_1__* host; TYPE_3__* reset_cmd; TYPE_2__ int_regs; int /*<<< orphan*/  interrupt_mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* cmd_done ) (TYPE_3__*) ;int /*<<< orphan*/  timer; } ;
struct TYPE_4__ {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTRS_TRANSITION_TO_OPERATIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(
	struct pmcraid_instance *pinstance
)
{
	unsigned long lock_flags;

	if (!pinstance->interrupt_mode) {
		FUNC2(INTRS_TRANSITION_TO_OPERATIONAL,
			pinstance->int_regs.ioa_host_interrupt_mask_reg);
		FUNC1(pinstance->int_regs.ioa_host_interrupt_mask_reg);
		FUNC2(INTRS_TRANSITION_TO_OPERATIONAL,
			pinstance->int_regs.ioa_host_interrupt_clr_reg);
		FUNC1(pinstance->int_regs.ioa_host_interrupt_clr_reg);
	}

	if (pinstance->reset_cmd != NULL) {
		FUNC0(&pinstance->reset_cmd->timer);
		FUNC3(
			pinstance->host->host_lock, lock_flags);
		pinstance->reset_cmd->cmd_done(pinstance->reset_cmd);
		FUNC4(
			pinstance->host->host_lock, lock_flags);
	}
}