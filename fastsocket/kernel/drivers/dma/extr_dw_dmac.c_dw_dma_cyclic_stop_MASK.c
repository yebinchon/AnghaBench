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
struct TYPE_2__ {int /*<<< orphan*/  device; } ;
struct dw_dma_chan {int mask; int /*<<< orphan*/  lock; TYPE_1__ chan; } ;
struct dw_dma {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_EN ; 
 int /*<<< orphan*/  FUNC0 (struct dw_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct dw_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dw_dma* FUNC5 (int /*<<< orphan*/ ) ; 
 struct dw_dma_chan* FUNC6 (struct dma_chan*) ; 

void FUNC7(struct dma_chan *chan)
{
	struct dw_dma_chan	*dwc = FUNC6(chan);
	struct dw_dma		*dw = FUNC5(dwc->chan.device);

	FUNC3(&dwc->lock);

	FUNC0(dw, CH_EN, dwc->mask);
	while (FUNC2(dw, CH_EN) & dwc->mask)
		FUNC1();

	FUNC4(&dwc->lock);
}