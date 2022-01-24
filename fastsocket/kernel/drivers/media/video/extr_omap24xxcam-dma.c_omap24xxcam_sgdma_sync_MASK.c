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
typedef  int /*<<< orphan*/  u32 ;
struct sgdma_state {scalar_t__ next_sglist; void* arg; int /*<<< orphan*/  (* callback ) (struct omap24xxcam_sgdma*,int /*<<< orphan*/ ,void*) ;} ;
struct omap24xxcam_sgdma {int free_sgdma; int next_sgdma; int /*<<< orphan*/  lock; struct sgdma_state* sg_state; int /*<<< orphan*/  dma; } ;
typedef  int /*<<< orphan*/  (* sgdma_callback_t ) (struct omap24xxcam_sgdma*,int /*<<< orphan*/ ,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  CAMDMA_CSR_TRANS_ERR ; 
 int NUM_SG_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct omap24xxcam_sgdma*,int /*<<< orphan*/ ,void*) ; 

void FUNC6(struct omap24xxcam_sgdma *sgdma)
{
	unsigned long flags;
	int sgslot;
	struct sgdma_state *sg_state;
	u32 csr = CAMDMA_CSR_TRANS_ERR;

	/* stop any DMA transfers in progress */
	FUNC0(&sgdma->dma, csr);

	FUNC2(&sgdma->lock, flags);

	if (sgdma->free_sgdma < NUM_SG_DMA) {
		sgslot = (sgdma->next_sgdma + sgdma->free_sgdma) % NUM_SG_DMA;
		sg_state = sgdma->sg_state + sgslot;
		if (sg_state->next_sglist != 0) {
			/* This DMA transfer was in progress, so abort it. */
			sgdma_callback_t callback = sg_state->callback;
			void *arg = sg_state->arg;
			sgdma->free_sgdma++;
			if (callback) {
				/* leave interrupts masked */
				FUNC3(&sgdma->lock);
				(*callback) (sgdma, csr, arg);
				FUNC1(&sgdma->lock);
			}
		}
	}

	FUNC4(&sgdma->lock, flags);
}