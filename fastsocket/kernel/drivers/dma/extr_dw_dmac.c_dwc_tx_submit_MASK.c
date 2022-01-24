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
struct dw_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  active_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  cookie; } ;
struct dw_desc {int /*<<< orphan*/  desc_node; TYPE_1__ txd; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dw_dma_chan*,struct dw_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct dw_dma_chan*,struct dw_desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct dw_dma_chan* FUNC8 (int /*<<< orphan*/ ) ; 
 struct dw_desc* FUNC9 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static dma_cookie_t FUNC10(struct dma_async_tx_descriptor *tx)
{
	struct dw_desc		*desc = FUNC9(tx);
	struct dw_dma_chan	*dwc = FUNC8(tx->chan);
	dma_cookie_t		cookie;

	FUNC6(&dwc->lock);
	cookie = FUNC2(dwc, desc);

	/*
	 * REVISIT: We should attempt to chain as many descriptors as
	 * possible, perhaps even appending to those already submitted
	 * for DMA. But this is hard to do in a race-free manner.
	 */
	if (FUNC5(&dwc->active_list)) {
		FUNC1(FUNC0(tx->chan), "tx_submit: started %u\n",
				desc->txd.cookie);
		FUNC3(dwc, desc);
		FUNC4(&desc->desc_node, &dwc->active_list);
	} else {
		FUNC1(FUNC0(tx->chan), "tx_submit: queued %u\n",
				desc->txd.cookie);

		FUNC4(&desc->desc_node, &dwc->queue);
	}

	FUNC7(&dwc->lock);

	return cookie;
}