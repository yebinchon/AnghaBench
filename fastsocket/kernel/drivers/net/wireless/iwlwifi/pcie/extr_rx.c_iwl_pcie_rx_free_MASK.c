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
struct iwl_rxq {int /*<<< orphan*/ * rb_stts; scalar_t__ rb_stts_dma; int /*<<< orphan*/ * bd; scalar_t__ bd_dma; int /*<<< orphan*/  lock; } ;
struct iwl_trans_pcie {int /*<<< orphan*/  rx_replenish; struct iwl_rxq rxq; } ;
struct iwl_trans {int /*<<< orphan*/  dev; } ;
struct iwl_rb_status {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 struct iwl_trans_pcie* FUNC1 (struct iwl_trans*) ; 
 int RX_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct iwl_trans *trans)
{
	struct iwl_trans_pcie *trans_pcie = FUNC1(trans);
	struct iwl_rxq *rxq = &trans_pcie->rxq;
	unsigned long flags;

	/*if rxq->bd is NULL, it means that nothing has been allocated,
	 * exit now */
	if (!rxq->bd) {
		FUNC0(trans, "Free NULL rx context\n");
		return;
	}

	FUNC2(&trans_pcie->rx_replenish);

	FUNC5(&rxq->lock, flags);
	FUNC4(trans);
	FUNC6(&rxq->lock, flags);

	FUNC3(trans->dev, sizeof(__le32) * RX_QUEUE_SIZE,
			  rxq->bd, rxq->bd_dma);
	rxq->bd_dma = 0;
	rxq->bd = NULL;

	if (rxq->rb_stts)
		FUNC3(trans->dev,
				  sizeof(struct iwl_rb_status),
				  rxq->rb_stts, rxq->rb_stts_dma);
	else
		FUNC0(trans, "Free rxq->rb_stts which is NULL\n");
	rxq->rb_stts_dma = 0;
	rxq->rb_stts = NULL;
}