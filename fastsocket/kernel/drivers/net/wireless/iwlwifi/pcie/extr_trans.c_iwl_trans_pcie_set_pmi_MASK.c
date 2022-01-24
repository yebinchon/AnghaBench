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
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 struct iwl_trans_pcie* FUNC0 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_TPOWER_PMI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iwl_trans *trans, bool state)
{
	struct iwl_trans_pcie *trans_pcie = FUNC0(trans);

	if (state)
		FUNC2(STATUS_TPOWER_PMI, &trans_pcie->status);
	else
		FUNC1(STATUS_TPOWER_PMI, &trans_pcie->status);
}