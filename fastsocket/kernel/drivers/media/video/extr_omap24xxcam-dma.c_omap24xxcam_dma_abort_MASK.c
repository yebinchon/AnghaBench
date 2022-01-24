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
struct omap24xxcam_dma {int next_dmach; int free_dmach; int /*<<< orphan*/  lock; TYPE_1__* ch_state; int /*<<< orphan*/  base; } ;
typedef  int /*<<< orphan*/  (* dma_callback_t ) (struct omap24xxcam_dma*,int /*<<< orphan*/ ,void*) ;
struct TYPE_2__ {void* arg; int /*<<< orphan*/  (* callback ) (struct omap24xxcam_dma*,int /*<<< orphan*/ ,void*) ;} ;

/* Variables and functions */
 int NUM_CAMDMA_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct omap24xxcam_dma*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC6(struct omap24xxcam_dma *dma, u32 csr)
{
	unsigned long flags;
	int dmach, i, free_dmach;
	dma_callback_t callback;
	void *arg;

	FUNC2(&dma->lock, flags);

	/* stop any DMA transfers in progress */
	dmach = (dma->next_dmach + dma->free_dmach) % NUM_CAMDMA_CHANNELS;
	for (i = 0; i < NUM_CAMDMA_CHANNELS; i++) {
		FUNC0(dma->base, dmach);
		dmach = (dmach + 1) % NUM_CAMDMA_CHANNELS;
	}

	/* We have to be careful here because the callback routine
	 * might start a new DMA transfer, and we only want to abort
	 * transfers that were started before this routine was called.
	 */
	free_dmach = dma->free_dmach;
	while ((dma->free_dmach < NUM_CAMDMA_CHANNELS) &&
	       (free_dmach < NUM_CAMDMA_CHANNELS)) {
		dmach = (dma->next_dmach + dma->free_dmach)
			% NUM_CAMDMA_CHANNELS;
		callback = dma->ch_state[dmach].callback;
		arg = dma->ch_state[dmach].arg;
		dma->free_dmach++;
		free_dmach++;
		if (callback) {
			/* leave interrupts disabled during callback */
			FUNC3(&dma->lock);
			(*callback) (dma, csr, arg);
			FUNC1(&dma->lock);
		}
	}

	FUNC4(&dma->lock, flags);
}