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
struct dmatest_chan {int /*<<< orphan*/  node; int /*<<< orphan*/  threads; struct dma_chan* chan; } ;
struct dma_device {int /*<<< orphan*/  cap_mask; } ;
struct dma_chan {struct dma_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_PQ ; 
 int /*<<< orphan*/  DMA_XOR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (struct dmatest_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmatest_channels ; 
 struct dmatest_chan* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_channels ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dma_chan *chan)
{
	struct dmatest_chan	*dtc;
	struct dma_device	*dma_dev = chan->device;
	unsigned int		thread_count = 0;
	unsigned int		cnt;

	dtc = FUNC4(sizeof(struct dmatest_chan), GFP_KERNEL);
	if (!dtc) {
		FUNC7("dmatest: No memory for %s\n", FUNC1(chan));
		return -ENOMEM;
	}

	dtc->chan = chan;
	FUNC0(&dtc->threads);

	if (FUNC2(DMA_MEMCPY, dma_dev->cap_mask)) {
		cnt = FUNC3(dtc, DMA_MEMCPY);
		thread_count += cnt > 0 ? cnt : 0;
	}
	if (FUNC2(DMA_XOR, dma_dev->cap_mask)) {
		cnt = FUNC3(dtc, DMA_XOR);
		thread_count += cnt > 0 ? cnt : 0;
	}
	if (FUNC2(DMA_PQ, dma_dev->cap_mask)) {
		cnt = FUNC3(dtc, DMA_PQ);
		thread_count += cnt > 0 ?: 0;
	}

	FUNC6("dmatest: Started %u threads using %s\n",
		thread_count, FUNC1(chan));

	FUNC5(&dtc->node, &dmatest_channels);
	nr_channels++;

	return 0;
}