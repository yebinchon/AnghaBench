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
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; } ;

/* Variables and functions */
 int PLX_CLEAR_DMA_INTR_BIT ; 
 scalar_t__ PLX_DMA0_CS_REG ; 
 scalar_t__ PLX_DMA1_CS_REG ; 
 int PLX_DMA_EN_BIT ; 
 int PLX_DMA_START_BIT ; 
 TYPE_1__* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct comedi_device *dev,
				  unsigned int channel)
{
	unsigned long flags;

	/*  spinlock for plx dma control/status reg */
	FUNC1(&dev->spinlock, flags);
	if (channel)
		FUNC3(PLX_DMA_EN_BIT | PLX_DMA_START_BIT |
		       PLX_CLEAR_DMA_INTR_BIT,
		       FUNC0(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
	else
		FUNC3(PLX_DMA_EN_BIT | PLX_DMA_START_BIT |
		       PLX_CLEAR_DMA_INTR_BIT,
		       FUNC0(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
	FUNC2(&dev->spinlock, flags);
}