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
struct dma_async_tx_descriptor {int /*<<< orphan*/  chan; } ;
struct at_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  active_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  cookie; } ;
struct at_desc {int /*<<< orphan*/  desc_node; TYPE_1__ txd; } ;
typedef  int /*<<< orphan*/  dma_cookie_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct at_dma_chan*,struct at_desc*) ; 
 int /*<<< orphan*/  FUNC1 (struct at_dma_chan*,struct at_desc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct at_dma_chan* FUNC8 (int /*<<< orphan*/ ) ; 
 struct at_desc* FUNC9 (struct dma_async_tx_descriptor*) ; 

__attribute__((used)) static dma_cookie_t FUNC10(struct dma_async_tx_descriptor *tx)
{
	struct at_desc		*desc = FUNC9(tx);
	struct at_dma_chan	*atchan = FUNC8(tx->chan);
	dma_cookie_t		cookie;

	FUNC6(&atchan->lock);
	cookie = FUNC0(atchan, desc);

	if (FUNC5(&atchan->active_list)) {
		FUNC3(FUNC2(tx->chan), "tx_submit: started %u\n",
				desc->txd.cookie);
		FUNC1(atchan, desc);
		FUNC4(&desc->desc_node, &atchan->active_list);
	} else {
		FUNC3(FUNC2(tx->chan), "tx_submit: queued %u\n",
				desc->txd.cookie);
		FUNC4(&desc->desc_node, &atchan->queue);
	}

	FUNC7(&atchan->lock);

	return cookie;
}