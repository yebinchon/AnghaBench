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
struct fsl_dma_chan {TYPE_1__* reg_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  mr; } ;

/* Variables and functions */
 int FUNC0 (struct fsl_dma_chan*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_dma_chan*,int /*<<< orphan*/ *,int,int) ; 
 int FSL_DMA_MR_DAHE ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct fsl_dma_chan *fsl_chan, int size)
{
	switch (size) {
	case 0:
		FUNC1(fsl_chan, &fsl_chan->reg_base->mr,
			FUNC0(fsl_chan, &fsl_chan->reg_base->mr, 32) &
			(~FSL_DMA_MR_DAHE), 32);
		break;
	case 1:
	case 2:
	case 4:
	case 8:
		FUNC1(fsl_chan, &fsl_chan->reg_base->mr,
			FUNC0(fsl_chan, &fsl_chan->reg_base->mr, 32) |
			FSL_DMA_MR_DAHE | (FUNC2(size) << 16),
			32);
		break;
	}
}