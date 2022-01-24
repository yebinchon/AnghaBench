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
struct TYPE_4__ {int dma; } ;
struct iwl_trans_pcie {int cmd_queue; int /*<<< orphan*/ * txq; int /*<<< orphan*/  irq_lock; TYPE_1__ kw; } ;
struct iwl_trans {TYPE_3__* cfg; } ;
struct TYPE_6__ {TYPE_2__* base_params; } ;
struct TYPE_5__ {int num_of_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FH_KW_MEM_ADDR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int /*<<< orphan*/  SCD_TXFACT ; 
 int TFD_CMD_SLOTS ; 
 int TFD_TX_CMD_SLOTS ; 
 int FUNC2 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*) ; 
 int FUNC4 (struct iwl_trans*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC9(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	int ret;
	int txq_id, slots_num;
	unsigned long flags;
	bool alloc = false;

	if (!trans_pcie->txq) {
		ret = FUNC2(trans);
		if (ret)
			goto error;
		alloc = true;
	}

	FUNC7(&trans_pcie->irq_lock, flags);

	/* Turn off all Tx DMA fifos */
	FUNC6(trans, SCD_TXFACT, 0);

	/* Tell NIC where to find the "keep warm" buffer */
	FUNC5(trans, FH_KW_MEM_ADDR_REG,
			   trans_pcie->kw.dma >> 4);

	FUNC8(&trans_pcie->irq_lock, flags);

	/* Alloc and init all Tx queues, including the command queue (#4/#9) */
	for (txq_id = 0; txq_id < trans->cfg->base_params->num_of_queues;
	     txq_id++) {
		slots_num = (txq_id == trans_pcie->cmd_queue) ?
					TFD_CMD_SLOTS : TFD_TX_CMD_SLOTS;
		ret = FUNC4(trans, &trans_pcie->txq[txq_id],
					 slots_num, txq_id);
		if (ret) {
			FUNC0(trans, "Tx %d queue init failed\n", txq_id);
			goto error;
		}
	}

	return 0;
error:
	/*Upon error, free only if we allocated something */
	if (alloc)
		FUNC3(trans);
	return ret;
}