#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct iwl_trans_pcie {int /*<<< orphan*/  irq_lock; } ;
struct iwl_trans {TYPE_2__* cfg; int /*<<< orphan*/  op_mode; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ shadow_reg_enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_INT_COALESCING ; 
 int /*<<< orphan*/  CSR_MAC_SHADOW_REG_CTRL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  IWL_HOST_INT_CALIB_TIMEOUT_DEF ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int) ; 
 scalar_t__ FUNC6 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC11(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	unsigned long flags;

	/* nic_init */
	FUNC9(&trans_pcie->irq_lock, flags);
	FUNC3(trans);

	/* Set interrupt coalescing calibration timer to default (512 usecs) */
	FUNC8(trans, CSR_INT_COALESCING, IWL_HOST_INT_CALIB_TIMEOUT_DEF);

	FUNC10(&trans_pcie->irq_lock, flags);

	FUNC5(trans, false);

	FUNC2(trans->op_mode);

	/* Allocate the RX queue, or reset if it is already allocated */
	FUNC4(trans);

	/* Allocate or reset and init all Tx and Command queues */
	if (FUNC6(trans))
		return -ENOMEM;

	if (trans->cfg->base_params->shadow_reg_enable) {
		/* enable shadow regs in HW */
		FUNC7(trans, CSR_MAC_SHADOW_REG_CTRL, 0x800FFFFF);
		FUNC0(trans, "Enabling shadow registers in device\n");
	}

	return 0;
}