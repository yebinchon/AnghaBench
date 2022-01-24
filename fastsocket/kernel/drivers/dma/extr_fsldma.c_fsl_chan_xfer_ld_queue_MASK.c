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
struct list_head {struct list_head* next; } ;
struct TYPE_4__ {int /*<<< orphan*/  cookie; } ;
struct fsl_dma_chan {int /*<<< orphan*/  desc_lock; int /*<<< orphan*/  dev; struct list_head ld_queue; TYPE_1__ common; int /*<<< orphan*/  completed_cookie; } ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_5__ {scalar_t__ phys; int /*<<< orphan*/  cookie; } ;
struct TYPE_6__ {TYPE_2__ async_tx; } ;

/* Variables and functions */
 scalar_t__ DMA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct fsl_dma_chan*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct fsl_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_3__* FUNC9 (struct list_head*) ; 

__attribute__((used)) static void FUNC10(struct fsl_dma_chan *fsl_chan)
{
	struct list_head *ld_node;
	dma_addr_t next_dest_addr;
	unsigned long flags;

	FUNC7(&fsl_chan->desc_lock, flags);

	if (!FUNC3(fsl_chan))
		goto out_unlock;

	FUNC2(fsl_chan);

	/* If there are some link descriptors
	 * not transfered in queue. We need to start it.
	 */

	/* Find the first un-transfer desciptor */
	for (ld_node = fsl_chan->ld_queue.next;
		(ld_node != &fsl_chan->ld_queue)
			&& (FUNC1(
				FUNC9(ld_node)->async_tx.cookie,
				fsl_chan->completed_cookie,
				fsl_chan->common.cookie) == DMA_SUCCESS);
		ld_node = ld_node->next);

	if (ld_node != &fsl_chan->ld_queue) {
		/* Get the ld start address from ld_queue */
		next_dest_addr = FUNC9(ld_node)->async_tx.phys;
		FUNC0(fsl_chan->dev, "xfer LDs staring from 0x%llx\n",
				(unsigned long long)next_dest_addr);
		FUNC5(fsl_chan, next_dest_addr);
		FUNC4(fsl_chan);
	} else {
		FUNC5(fsl_chan, 0);
		FUNC6(fsl_chan, 0);
	}

out_unlock:
	FUNC8(&fsl_chan->desc_lock, flags);
}