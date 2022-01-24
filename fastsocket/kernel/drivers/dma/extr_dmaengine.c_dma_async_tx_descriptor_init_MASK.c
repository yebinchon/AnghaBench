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
struct dma_chan {int dummy; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  lock; struct dma_chan* chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

void FUNC1(struct dma_async_tx_descriptor *tx,
	struct dma_chan *chan)
{
	tx->chan = chan;
	FUNC0(&tx->lock);
}