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
struct fsl_dma_chan {int /*<<< orphan*/  dev; TYPE_1__* reg_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  mr; } ;

/* Variables and functions */
 int FUNC0 (struct fsl_dma_chan*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_dma_chan*,int /*<<< orphan*/ *,int,int) ; 
 int FSL_DMA_MR_CA ; 
 int FSL_DMA_MR_CS ; 
 int FSL_DMA_MR_EMS_EN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct fsl_dma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct fsl_dma_chan *fsl_chan)
{
	int i;

	FUNC1(fsl_chan, &fsl_chan->reg_base->mr,
		FUNC0(fsl_chan, &fsl_chan->reg_base->mr, 32) | FSL_DMA_MR_CA,
		32);
	FUNC1(fsl_chan, &fsl_chan->reg_base->mr,
		FUNC0(fsl_chan, &fsl_chan->reg_base->mr, 32) & ~(FSL_DMA_MR_CS
		| FSL_DMA_MR_EMS_EN | FSL_DMA_MR_CA), 32);

	for (i = 0; i < 100; i++) {
		if (FUNC3(fsl_chan))
			break;
		FUNC4(10);
	}
	if (i >= 100 && !FUNC3(fsl_chan))
		FUNC2(fsl_chan->dev, "DMA halt timeout!\n");
}