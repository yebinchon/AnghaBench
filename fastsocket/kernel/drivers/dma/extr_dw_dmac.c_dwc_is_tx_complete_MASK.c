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
struct dw_dma_chan {int /*<<< orphan*/  completed; } ;
struct dma_chan {int /*<<< orphan*/  cookie; int /*<<< orphan*/  device; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dw_dma_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct dw_dma_chan* FUNC3 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status
FUNC4(struct dma_chan *chan,
		dma_cookie_t cookie,
		dma_cookie_t *done, dma_cookie_t *used)
{
	struct dw_dma_chan	*dwc = FUNC3(chan);
	dma_cookie_t		last_used;
	dma_cookie_t		last_complete;
	int			ret;

	last_complete = dwc->completed;
	last_used = chan->cookie;

	ret = FUNC0(cookie, last_complete, last_used);
	if (ret != DMA_SUCCESS) {
		FUNC1(FUNC2(chan->device), dwc);

		last_complete = dwc->completed;
		last_used = chan->cookie;

		ret = FUNC0(cookie, last_complete, last_used);
	}

	if (done)
		*done = last_complete;
	if (used)
		*used = last_used;

	return ret;
}