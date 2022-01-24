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
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; TYPE_1__* nvm_sections; int /*<<< orphan*/  nvm_data; int /*<<< orphan*/ * phy_db; int /*<<< orphan*/  trans; int /*<<< orphan*/  scan_cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct iwl_op_mode*) ; 
 int NVM_NUM_OF_SECTIONS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct iwl_op_mode *op_mode)
{
	struct iwl_mvm *mvm = FUNC0(op_mode);
	int i;

	FUNC4(mvm);

	FUNC2(mvm->hw);

	FUNC7(mvm->scan_cmd);

	FUNC6(mvm->trans, true);

	FUNC5(mvm->phy_db);
	mvm->phy_db = NULL;

	FUNC3(mvm->nvm_data);
	for (i = 0; i < NVM_NUM_OF_SECTIONS; i++)
		FUNC7(mvm->nvm_sections[i].data);

	FUNC1(mvm->hw);
}