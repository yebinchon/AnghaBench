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
typedef  int u16 ;
struct ioatdma_device {int /*<<< orphan*/  completion_pool; int /*<<< orphan*/  (* reset_hw ) (struct ioat_chan_common*) ;int /*<<< orphan*/  (* cleanup_tasklet ) (unsigned long) ;} ;
struct ioat_ring_ent {int dummy; } ;
struct ioat_chan_common {scalar_t__ completion_dma; scalar_t__ last_completion; int /*<<< orphan*/  completion; int /*<<< orphan*/  state; int /*<<< orphan*/  timer; int /*<<< orphan*/  cleanup_task; struct ioatdma_device* device; } ;
struct ioat2_dma_chan {int alloc_order; scalar_t__ dmacount; int /*<<< orphan*/  ring_lock; int /*<<< orphan*/ * ring; scalar_t__ tail; scalar_t__ head; struct ioat_chan_common base; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOAT_RUN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct ioat2_dma_chan*,struct ioat_ring_ent*) ; 
 int /*<<< orphan*/  FUNC5 (struct ioat_ring_ent*,struct dma_chan*) ; 
 struct ioat_ring_ent* FUNC6 (struct ioat2_dma_chan*,scalar_t__) ; 
 int FUNC7 (struct ioat2_dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct ioat_chan_common*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct ioat_chan_common*) ; 
 struct ioat2_dma_chan* FUNC16 (struct dma_chan*) ; 

void FUNC17(struct dma_chan *c)
{
	struct ioat2_dma_chan *ioat = FUNC16(c);
	struct ioat_chan_common *chan = &ioat->base;
	struct ioatdma_device *device = chan->device;
	struct ioat_ring_ent *desc;
	const u16 total_descs = 1 << ioat->alloc_order;
	int descs;
	int i;

	/* Before freeing channel resources first check
	 * if they have been previously allocated for this channel.
	 */
	if (!ioat->ring)
		return;

	FUNC14(&chan->cleanup_task);
	FUNC1(&chan->timer);
	device->cleanup_tasklet((unsigned long) ioat);
	device->reset_hw(chan);
	FUNC0(IOAT_RUN, &chan->state);

	FUNC10(&ioat->ring_lock);
	descs = FUNC7(ioat);
	FUNC2(FUNC15(chan), "freeing %d idle descriptors\n", descs);
	for (i = 0; i < descs; i++) {
		desc = FUNC6(ioat, ioat->head + i);
		FUNC5(desc, c);
	}

	if (descs < total_descs)
		FUNC3(FUNC15(chan), "Freeing %d in use descriptors!\n",
			total_descs - descs);

	for (i = 0; i < total_descs - descs; i++) {
		desc = FUNC6(ioat, ioat->tail + i);
		FUNC4(ioat, desc);
		FUNC5(desc, c);
	}

	FUNC8(ioat->ring);
	ioat->ring = NULL;
	ioat->alloc_order = 0;
	FUNC9(device->completion_pool, chan->completion,
		      chan->completion_dma);
	FUNC11(&ioat->ring_lock);

	chan->last_completion = 0;
	chan->completion_dma = 0;
	ioat->dmacount = 0;
}