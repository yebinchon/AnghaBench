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
typedef  scalar_t__ u32 ;
struct iwl_trans_pcie {int /*<<< orphan*/  queue_used; scalar_t__ scd_base_addr; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC2 (struct iwl_trans*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

void FUNC9(struct iwl_trans *trans, int txq_id)
{
	struct iwl_trans_pcie *trans_pcie = FUNC2(trans);
	u32 stts_addr = trans_pcie->scd_base_addr +
			FUNC3(txq_id);
	static const u32 zero_val[4] = {};

	if (!FUNC8(txq_id, trans_pcie->queue_used)) {
		FUNC4(1, "queue %d not used", txq_id);
		return;
	}

	FUNC5(trans, txq_id);

	FUNC7(trans, stts_addr, (void *)zero_val,
			    FUNC0(zero_val));

	FUNC6(trans, txq_id);

	FUNC1(trans, "Deactivate queue %d\n", txq_id);
}