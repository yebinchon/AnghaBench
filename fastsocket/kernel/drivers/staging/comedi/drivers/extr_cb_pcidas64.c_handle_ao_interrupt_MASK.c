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
typedef  int uint8_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; struct comedi_subdevice* write_subdev; } ;
struct comedi_cmd {int dummy; } ;
struct comedi_async {int /*<<< orphan*/  events; struct comedi_cmd cmd; } ;
struct TYPE_2__ {scalar_t__ plx9080_iobase; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  COMEDI_CB_ERROR ; 
 unsigned short DAC_DONE_BIT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 unsigned int ICS_DMA0_A ; 
 int PLX_CLEAR_DMA_INTR_BIT ; 
 scalar_t__ PLX_DMA0_CS_REG ; 
 scalar_t__ PLX_DMA0_DESCRIPTOR_REG ; 
 scalar_t__ PLX_DMA0_PCI_ADDRESS_REG ; 
 int PLX_DMA_DONE_BIT ; 
 int PLX_DMA_EN_BIT ; 
 scalar_t__ FUNC1 (struct comedi_device*,int) ; 
 scalar_t__ FUNC2 (struct comedi_device*,struct comedi_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_cmd*) ; 
 TYPE_1__* FUNC5 (struct comedi_device*) ; 
 int FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct comedi_device *dev,
				unsigned short status, unsigned int plx_status)
{
	struct comedi_subdevice *s = dev->write_subdev;
	struct comedi_async *async;
	struct comedi_cmd *cmd;
	uint8_t dma0_status;
	unsigned long flags;

	/* board might not support ao, in which case write_subdev is NULL */
	if (s == NULL)
		return;
	async = s->async;
	cmd = &async->cmd;

	/*  spin lock makes sure noone else changes plx dma control reg */
	FUNC9(&dev->spinlock, flags);
	dma0_status = FUNC6(FUNC5(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
	if (plx_status & ICS_DMA0_A) {	/*  dma chan 0 interrupt */
		if ((dma0_status & PLX_DMA_EN_BIT)
		    && !(dma0_status & PLX_DMA_DONE_BIT))
			FUNC11(PLX_DMA_EN_BIT | PLX_CLEAR_DMA_INTR_BIT,
			       FUNC5(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
		else
			FUNC11(PLX_CLEAR_DMA_INTR_BIT,
			       FUNC5(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
		FUNC10(&dev->spinlock, flags);
		FUNC0("dma0 status 0x%x\n", dma0_status);
		if (dma0_status & PLX_DMA_EN_BIT) {
			FUNC4(dev, cmd);
			/* try to recover from dma end-of-chain event */
			if (FUNC1(dev, dma0_status))
				FUNC8(dev);
		}
		FUNC0(" cleared dma ch0 interrupt\n");
	} else
		FUNC10(&dev->spinlock, flags);

	if ((status & DAC_DONE_BIT)) {
		async->events |= COMEDI_CB_EOA;
		if (FUNC2(dev, cmd))
			async->events |= COMEDI_CB_ERROR;
		FUNC0("plx dma0 desc reg 0x%x\n",
			    FUNC7(FUNC5(dev)->plx9080_iobase +
				  PLX_DMA0_DESCRIPTOR_REG));
		FUNC0("plx dma0 address reg 0x%x\n",
			    FUNC7(FUNC5(dev)->plx9080_iobase +
				  PLX_DMA0_PCI_ADDRESS_REG));
	}
	FUNC3(dev, s);
}