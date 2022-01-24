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
struct iwl_mvm {TYPE_1__* hw; int /*<<< orphan*/  status; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_MVM_STATUS_HW_RFKILL ; 
 struct iwl_mvm* FUNC0 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct iwl_op_mode *op_mode, bool state)
{
	struct iwl_mvm *mvm = FUNC0(op_mode);

	if (state)
		FUNC2(IWL_MVM_STATUS_HW_RFKILL, &mvm->status);
	else
		FUNC1(IWL_MVM_STATUS_HW_RFKILL, &mvm->status);

	FUNC3(mvm->hw->wiphy, state);
}