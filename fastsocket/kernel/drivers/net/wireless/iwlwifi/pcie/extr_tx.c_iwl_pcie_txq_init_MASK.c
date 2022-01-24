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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int dma_addr; } ;
struct iwl_txq {TYPE_1__ q; int /*<<< orphan*/  lock; scalar_t__ need_update; } ;
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TFD_QUEUE_SIZE_MAX ; 
 int FUNC2 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct iwl_trans *trans, struct iwl_txq *txq,
			      int slots_num, u32 txq_id)
{
	int ret;

	txq->need_update = 0;

	/* TFD_QUEUE_SIZE_MAX must be power-of-two size, otherwise
	 * iwl_queue_inc_wrap and iwl_queue_dec_wrap are broken. */
	FUNC0(TFD_QUEUE_SIZE_MAX & (TFD_QUEUE_SIZE_MAX - 1));

	/* Initialize queue's high/low-water marks, and head/tail indexes */
	ret = FUNC2(&txq->q, TFD_QUEUE_SIZE_MAX, slots_num,
			txq_id);
	if (ret)
		return ret;

	FUNC4(&txq->lock);

	/*
	 * Tell nic where to find circular buffer of Tx Frame Descriptors for
	 * given Tx queue, and enable the DMA channel used for that queue.
	 * Circular buffer (TFD queue in DRAM) physical base address */
	FUNC3(trans, FUNC1(txq_id),
			   txq->q.dma_addr >> 8);

	return 0;
}