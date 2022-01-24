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
struct dmatest_thread {int type; int /*<<< orphan*/  node; int /*<<< orphan*/  task; struct dma_chan* chan; } ;
struct dmatest_chan {int /*<<< orphan*/  threads; struct dma_chan* chan; } ;
struct dma_chan {int dummy; } ;
typedef  enum dma_transaction_type { ____Placeholder_dma_transaction_type } dma_transaction_type ;

/* Variables and functions */
 int DMA_MEMCPY ; 
 int DMA_PQ ; 
 int DMA_XOR ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  dmatest_func ; 
 int /*<<< orphan*/  FUNC2 (struct dmatest_thread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dmatest_thread*,char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct dmatest_thread* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 unsigned int threads_per_chan ; 

__attribute__((used)) static int FUNC8(struct dmatest_chan *dtc, enum dma_transaction_type type)
{
	struct dmatest_thread *thread;
	struct dma_chan *chan = dtc->chan;
	char *op;
	unsigned int i;

	if (type == DMA_MEMCPY)
		op = "copy";
	else if (type == DMA_XOR)
		op = "xor";
	else if (type == DMA_PQ)
		op = "pq";
	else
		return -EINVAL;

	for (i = 0; i < threads_per_chan; i++) {
		thread = FUNC4(sizeof(struct dmatest_thread), GFP_KERNEL);
		if (!thread) {
			FUNC6("dmatest: No memory for %s-%s%u\n",
				   FUNC1(chan), op, i);

			break;
		}
		thread->chan = dtc->chan;
		thread->type = type;
		FUNC7();
		thread->task = FUNC3(dmatest_func, thread, "%s-%s%u",
				FUNC1(chan), op, i);
		if (FUNC0(thread->task)) {
			FUNC6("dmatest: Failed to run thread %s-%s%u\n",
					FUNC1(chan), op, i);
			FUNC2(thread);
			break;
		}

		/* srcbuf and dstbuf are allocated by the thread itself */

		FUNC5(&thread->node, &dtc->threads);
	}

	return i;
}