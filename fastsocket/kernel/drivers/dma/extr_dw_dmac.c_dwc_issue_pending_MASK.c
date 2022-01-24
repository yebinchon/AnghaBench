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
struct dw_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct dma_chan {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dw_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dw_dma_chan* FUNC5 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC6(struct dma_chan *chan)
{
	struct dw_dma_chan	*dwc = FUNC5(chan);

	FUNC2(&dwc->lock);
	if (!FUNC1(&dwc->queue))
		FUNC0(FUNC4(chan->device), dwc);
	FUNC3(&dwc->lock);
}