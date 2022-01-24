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
struct iwl_trans_pcie {int /*<<< orphan*/  status; int /*<<< orphan*/  irq_lock; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_RFKILL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC11(struct iwl_trans *trans,
				   bool op_mode_leaving)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);
	bool hw_rfkill;
	unsigned long flags;

	FUNC9(&trans_pcie->irq_lock, flags);
	FUNC2(trans);
	FUNC10(&trans_pcie->irq_lock, flags);

	FUNC6(trans);

	FUNC9(&trans_pcie->irq_lock, flags);
	FUNC2(trans);
	FUNC10(&trans_pcie->irq_lock, flags);

	FUNC7(trans);

	if (!op_mode_leaving) {
		/*
		 * Even if we stop the HW, we still want the RF kill
		 * interrupt
		 */
		FUNC3(trans);

		/*
		 * Check again since the RF kill state may have changed while
		 * all the interrupts were disabled, in this case we couldn't
		 * receive the RF kill interrupt and update the state in the
		 * op_mode.
		 */
		hw_rfkill = FUNC4(trans);
		if (hw_rfkill)
			FUNC8(STATUS_RFKILL, &trans_pcie->status);
		else
			FUNC1(STATUS_RFKILL, &trans_pcie->status);
		FUNC5(trans->op_mode, hw_rfkill);
	}
}