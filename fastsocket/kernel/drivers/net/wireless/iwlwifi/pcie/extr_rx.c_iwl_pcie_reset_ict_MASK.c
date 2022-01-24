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
typedef  int u32 ;
struct iwl_trans_pcie {int ict_tbl_dma; int use_ict; int inta_mask; int /*<<< orphan*/  irq_lock; scalar_t__ ict_index; int /*<<< orphan*/  ict_tbl; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int CSR_DRAM_INIT_TBL_WRAP_CHECK ; 
 int CSR_DRAM_INT_TBL_ENABLE ; 
 int /*<<< orphan*/  CSR_DRAM_INT_TBL_REG ; 
 int /*<<< orphan*/  CSR_INT ; 
 int ICT_SHIFT ; 
 int /*<<< orphan*/  ICT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	u32 val;
	unsigned long flags;

	if (!trans_pcie->ict_tbl)
		return;

	FUNC6(&trans_pcie->irq_lock, flags);
	FUNC2(trans);

	FUNC5(trans_pcie->ict_tbl, 0, ICT_SIZE);

	val = trans_pcie->ict_tbl_dma >> ICT_SHIFT;

	val |= CSR_DRAM_INT_TBL_ENABLE;
	val |= CSR_DRAM_INIT_TBL_WRAP_CHECK;

	FUNC0(trans, "CSR_DRAM_INT_TBL_REG =0x%x\n", val);

	FUNC4(trans, CSR_DRAM_INT_TBL_REG, val);
	trans_pcie->use_ict = true;
	trans_pcie->ict_index = 0;
	FUNC4(trans, CSR_INT, trans_pcie->inta_mask);
	FUNC3(trans);
	FUNC7(&trans_pcie->irq_lock, flags);
}