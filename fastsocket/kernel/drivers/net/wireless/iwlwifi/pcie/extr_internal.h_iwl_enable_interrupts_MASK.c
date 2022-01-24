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
struct iwl_trans_pcie {int /*<<< orphan*/  inta_mask; int /*<<< orphan*/  status; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_INT_ENABLED ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);

	FUNC0(trans, "Enabling interrupts\n");
	FUNC3(STATUS_INT_ENABLED, &trans_pcie->status);
	FUNC2(trans, CSR_INT_MASK, trans_pcie->inta_mask);
}