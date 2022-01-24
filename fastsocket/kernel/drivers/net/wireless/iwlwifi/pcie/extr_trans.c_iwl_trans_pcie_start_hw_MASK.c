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
struct iwl_trans_pcie {int /*<<< orphan*/  status; } ;
struct iwl_trans {int /*<<< orphan*/  op_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_RFKILL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*) ; 
 int FUNC7 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	bool hw_rfkill;
	int err;

	err = FUNC7(trans);
	if (err) {
		FUNC0(trans, "Error while preparing HW: %d\n", err);
		return err;
	}

	FUNC6(trans);

	/* From now on, the op_mode will be kept updated about RF kill state */
	FUNC3(trans);

	hw_rfkill = FUNC4(trans);
	if (hw_rfkill)
		FUNC8(STATUS_RFKILL, &trans_pcie->status);
	else
		FUNC2(STATUS_RFKILL, &trans_pcie->status);
	FUNC5(trans->op_mode, hw_rfkill);

	return 0;
}