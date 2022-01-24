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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int irq_dma_bits; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int DMA_EN_BIT ; 
 int DMA_INTR_EN_BIT ; 
 scalar_t__ FIFO_RESET_REG ; 
 scalar_t__ IRQ_DMA_CNTRL_REG ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev, struct comedi_subdevice *s)
{
	/*  disable dma on card */
	devpriv->irq_dma_bits &= ~DMA_INTR_EN_BIT & ~DMA_EN_BIT;
	FUNC1(devpriv->irq_dma_bits, dev->iobase + IRQ_DMA_CNTRL_REG);

	/*  disable computer's dma */
	FUNC0(devpriv->dma);

	/*  clear fifo and reset triggering circuitry */
	FUNC1(0, dev->iobase + FIFO_RESET_REG);

	return 0;
}