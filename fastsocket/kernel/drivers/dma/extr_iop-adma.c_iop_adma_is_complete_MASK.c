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
struct iop_adma_chan {int /*<<< orphan*/  completed_cookie; } ;
struct dma_chan {int /*<<< orphan*/  cookie; } ;
typedef  enum dma_status { ____Placeholder_dma_status } dma_status ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int DMA_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iop_adma_chan*) ; 
 struct iop_adma_chan* FUNC2 (struct dma_chan*) ; 

__attribute__((used)) static enum dma_status FUNC3(struct dma_chan *chan,
					dma_cookie_t cookie,
					dma_cookie_t *done,
					dma_cookie_t *used)
{
	struct iop_adma_chan *iop_chan = FUNC2(chan);
	dma_cookie_t last_used;
	dma_cookie_t last_complete;
	enum dma_status ret;

	last_used = chan->cookie;
	last_complete = iop_chan->completed_cookie;

	if (done)
		*done = last_complete;
	if (used)
		*used = last_used;

	ret = FUNC0(cookie, last_complete, last_used);
	if (ret == DMA_SUCCESS)
		return ret;

	FUNC1(iop_chan);

	last_used = chan->cookie;
	last_complete = iop_chan->completed_cookie;

	if (done)
		*done = last_complete;
	if (used)
		*used = last_used;

	return FUNC0(cookie, last_complete, last_used);
}