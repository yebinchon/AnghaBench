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
struct txx9dmac_chan {int /*<<< orphan*/  completed; int /*<<< orphan*/  lock; } ;
struct dma_chan {int /*<<< orphan*/  cookie; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct txx9dmac_chan* FUNC3 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct txx9dmac_chan*) ; 

__attribute__((used)) static enum dma_status
FUNC5(struct dma_chan *chan,
			dma_cookie_t cookie,
		dma_cookie_t *done, dma_cookie_t *used)
{
	struct txx9dmac_chan *dc = FUNC3(chan);
	dma_cookie_t last_used;
	dma_cookie_t last_complete;
	int ret;

	last_complete = dc->completed;
	last_used = chan->cookie;

	ret = FUNC0(cookie, last_complete, last_used);
	if (ret != DMA_SUCCESS) {
		FUNC1(&dc->lock);
		FUNC4(dc);
		FUNC2(&dc->lock);

		last_complete = dc->completed;
		last_used = chan->cookie;

		ret = FUNC0(cookie, last_complete, last_used);
	}

	if (done)
		*done = last_complete;
	if (used)
		*used = last_used;

	return ret;
}