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
struct dma_chan {int /*<<< orphan*/  cookie; } ;
struct at_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  completed_cookie; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct at_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct at_dma_chan* FUNC6 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status
FUNC7(struct dma_chan *chan,
		dma_cookie_t cookie,
		dma_cookie_t *done, dma_cookie_t *used)
{
	struct at_dma_chan	*atchan = FUNC6(chan);
	dma_cookie_t		last_used;
	dma_cookie_t		last_complete;
	enum dma_status		ret;

	FUNC2(FUNC1(chan), "is_tx_complete: %d (d%d, u%d)\n",
			cookie, done ? *done : 0, used ? *used : 0);

	FUNC4(&atchan->lock);

	last_complete = atchan->completed_cookie;
	last_used = chan->cookie;

	ret = FUNC3(cookie, last_complete, last_used);
	if (ret != DMA_SUCCESS) {
		FUNC0(atchan);

		last_complete = atchan->completed_cookie;
		last_used = chan->cookie;

		ret = FUNC3(cookie, last_complete, last_used);
	}

	FUNC5(&atchan->lock);

	if (done)
		*done = last_complete;
	if (used)
		*used = last_used;

	return ret;
}