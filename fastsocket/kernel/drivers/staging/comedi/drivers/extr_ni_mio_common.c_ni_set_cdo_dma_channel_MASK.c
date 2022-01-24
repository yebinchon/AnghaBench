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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int cdio_dma_select_reg; int /*<<< orphan*/  soft_reg_copy_lock; } ;

/* Variables and functions */
 int CDO_DMA_Select_Mask ; 
 int CDO_DMA_Select_Shift ; 
 int /*<<< orphan*/  M_Offset_CDIO_DMA_Select ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC5(struct comedi_device *dev,
					  int mite_channel)
{
	unsigned long flags;

	FUNC3(&devpriv->soft_reg_copy_lock, flags);
	devpriv->cdio_dma_select_reg &= ~CDO_DMA_Select_Mask;
	if (mite_channel >= 0) {
		/*XXX just guessing ni_stc_dma_channel_select_bitfield() returns the right bits,
		   under the assumption the cdio dma selection works just like ai/ao/gpct.
		   Definitely works for dma channels 0 and 1. */
		devpriv->cdio_dma_select_reg |=
		    (FUNC1(mite_channel) <<
		     CDO_DMA_Select_Shift) & CDO_DMA_Select_Mask;
	}
	FUNC2(devpriv->cdio_dma_select_reg, M_Offset_CDIO_DMA_Select);
	FUNC0();
	FUNC4(&devpriv->soft_reg_copy_lock, flags);
}