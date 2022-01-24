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
struct iwl_trans_pcie {int /*<<< orphan*/  txq; int /*<<< orphan*/  irq_lock; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {int num_of_queues; } ;

/* Variables and functions */
 int FH_TCSR_CHNL_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FH_TSSR_TX_STATUS_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int,int /*<<< orphan*/ ) ; 
 struct iwl_trans_pcie* FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_trans*,int) ; 
 int FUNC7 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC12(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC3(trans);
	int ch, txq_id, ret;
	unsigned long flags;

	/* Turn off all Tx DMA fifos */
	FUNC10(&trans_pcie->irq_lock, flags);

	FUNC5(trans, 0);

	/* Stop each Tx DMA channel, and wait for it to be idle */
	for (ch = 0; ch < FH_TCSR_CHNL_NUM; ch++) {
		FUNC9(trans,
				   FUNC0(ch), 0x0);
		ret = FUNC7(trans, FH_TSSR_TX_STATUS_REG,
			FUNC1(ch), 1000);
		if (ret < 0)
			FUNC2(trans,
				"Failing on timeout while stopping DMA channel %d [0x%08x]\n",
				ch,
				FUNC8(trans,
						  FH_TSSR_TX_STATUS_REG));
	}
	FUNC11(&trans_pcie->irq_lock, flags);

	if (!trans_pcie->txq) {
		FUNC4(trans,
			 "Stopping tx queues that aren't allocated...\n");
		return 0;
	}

	/* Unmap DMA from host system and free skb's */
	for (txq_id = 0; txq_id < trans->cfg->base_params->num_of_queues;
	     txq_id++)
		FUNC6(trans, txq_id);

	return 0;
}