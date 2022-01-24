#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct dw_dma_chan {int mask; int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; TYPE_1__ chan; struct dw_cyclic_desc* cdesc; } ;
struct dw_dma {int dummy; } ;
struct dw_cyclic_desc {int periods; struct dw_cyclic_desc* desc; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  XFER; int /*<<< orphan*/  ERROR; int /*<<< orphan*/  BLOCK; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_EN ; 
 TYPE_2__ CLEAR ; 
 int /*<<< orphan*/  DW_DMA_IS_CYCLIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct dw_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct dw_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dw_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct dw_dma_chan*,struct dw_cyclic_desc) ; 
 int /*<<< orphan*/  FUNC8 (struct dw_cyclic_desc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 struct dw_dma* FUNC11 (int /*<<< orphan*/ ) ; 
 struct dw_dma_chan* FUNC12 (struct dma_chan*) ; 

void FUNC13(struct dma_chan *chan)
{
	struct dw_dma_chan	*dwc = FUNC12(chan);
	struct dw_dma		*dw = FUNC11(dwc->chan.device);
	struct dw_cyclic_desc	*cdesc = dwc->cdesc;
	int			i;

	FUNC4(FUNC0(&dwc->chan), "cyclic free\n");

	if (!cdesc)
		return;

	FUNC9(&dwc->lock);

	FUNC1(dw, CH_EN, dwc->mask);
	while (FUNC5(dw, CH_EN) & dwc->mask)
		FUNC3();

	FUNC6(dw, CLEAR.BLOCK, dwc->mask);
	FUNC6(dw, CLEAR.ERROR, dwc->mask);
	FUNC6(dw, CLEAR.XFER, dwc->mask);

	FUNC10(&dwc->lock);

	for (i = 0; i < cdesc->periods; i++)
		FUNC7(dwc, cdesc->desc[i]);

	FUNC8(cdesc->desc);
	FUNC8(cdesc);

	FUNC2(DW_DMA_IS_CYCLIC, &dwc->flags);
}