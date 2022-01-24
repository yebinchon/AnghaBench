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
struct TYPE_2__ {int* dma_configuration_soft_copies; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMAConfigRegister ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int MAX_DMA_CHANNEL ; 
 unsigned int NUM_PFI_CHANNELS ; 
 int FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  dma_selection_none ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct comedi_device*) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev, int chipset)
{
	unsigned i;

	/*  init dma configuration register */
	FUNC4(dev)->dma_configuration_soft_copies[chipset] = 0;
	for (i = 0; i < MAX_DMA_CHANNEL; ++i) {
		FUNC4(dev)->dma_configuration_soft_copies[chipset] |=
		    FUNC1(i, dma_selection_none) & FUNC2(i);
	}
	FUNC3(dev, chipset,
			       FUNC4(dev)->
			       dma_configuration_soft_copies[chipset],
			       DMAConfigRegister);
	for (i = 0; i < NUM_PFI_CHANNELS; ++i) {
		FUNC3(dev, chipset, 0, FUNC0(i));
	}
}