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
typedef  int uint32_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct comedi_cmd {scalar_t__ stop_src; int stop_arg; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct TYPE_2__ {int dma_desc_phys_addr; int dio_count; scalar_t__ hpdi_iobase; scalar_t__ plx9080_iobase; scalar_t__ dma_desc_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOARD_CONTROL_REG ; 
 scalar_t__ BOARD_STATUS_REG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ INTERRUPT_CONTROL_REG ; 
 int PLX_CLEAR_DMA_INTR_BIT ; 
 int PLX_DESC_IN_PCI_BIT ; 
 scalar_t__ PLX_DMA0_CS_REG ; 
 scalar_t__ PLX_DMA0_DESCRIPTOR_REG ; 
 scalar_t__ PLX_DMA0_LOCAL_ADDRESS_REG ; 
 scalar_t__ PLX_DMA0_PCI_ADDRESS_REG ; 
 scalar_t__ PLX_DMA0_TRANSFER_SIZE_REG ; 
 int PLX_DMA_EN_BIT ; 
 int PLX_DMA_START_BIT ; 
 int PLX_INTR_TERM_COUNT ; 
 int PLX_XFER_LOCAL_TO_PCI ; 
 int /*<<< orphan*/  RX_ENABLE_BIT ; 
 int /*<<< orphan*/  RX_FIFO_RESET_BIT ; 
 int /*<<< orphan*/  RX_FULL_INTR ; 
 int RX_OVERRUN_BIT ; 
 int RX_UNDERRUN_BIT ; 
 scalar_t__ TRIG_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct comedi_device *dev, struct comedi_subdevice *s)
{
	uint32_t bits;
	unsigned long flags;
	struct comedi_async *async = s->async;
	struct comedi_cmd *cmd = &async->cmd;

	FUNC2(dev, RX_FIFO_RESET_BIT, BOARD_CONTROL_REG);

	FUNC0("hpdi: in di_cmd\n");

	FUNC1(dev, 0);

	FUNC4(dev)->dma_desc_index = 0;

	/* These register are supposedly unused during chained dma,
	 * but I have found that left over values from last operation
	 * occasionally cause problems with transfer of first dma
	 * block.  Initializing them to zero seems to fix the problem. */
	FUNC8(0, FUNC4(dev)->plx9080_iobase + PLX_DMA0_TRANSFER_SIZE_REG);
	FUNC8(0, FUNC4(dev)->plx9080_iobase + PLX_DMA0_PCI_ADDRESS_REG);
	FUNC8(0, FUNC4(dev)->plx9080_iobase + PLX_DMA0_LOCAL_ADDRESS_REG);
	/*  give location of first dma descriptor */
	bits =
	    FUNC4(dev)->dma_desc_phys_addr | PLX_DESC_IN_PCI_BIT |
	    PLX_INTR_TERM_COUNT | PLX_XFER_LOCAL_TO_PCI;
	FUNC8(bits, FUNC4(dev)->plx9080_iobase + PLX_DMA0_DESCRIPTOR_REG);

	/*  spinlock for plx dma control/status reg */
	FUNC5(&dev->spinlock, flags);
	/*  enable dma transfer */
	FUNC7(PLX_DMA_EN_BIT | PLX_DMA_START_BIT | PLX_CLEAR_DMA_INTR_BIT,
	       FUNC4(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
	FUNC6(&dev->spinlock, flags);

	if (cmd->stop_src == TRIG_COUNT)
		FUNC4(dev)->dio_count = cmd->stop_arg;
	else
		FUNC4(dev)->dio_count = 1;

	/*  clear over/under run status flags */
	FUNC8(RX_UNDERRUN_BIT | RX_OVERRUN_BIT,
	       FUNC4(dev)->hpdi_iobase + BOARD_STATUS_REG);
	/*  enable interrupts */
	FUNC8(FUNC3(RX_FULL_INTR),
	       FUNC4(dev)->hpdi_iobase + INTERRUPT_CONTROL_REG);

	FUNC0("hpdi: starting rx\n");
	FUNC2(dev, RX_ENABLE_BIT, BOARD_CONTROL_REG);

	return 0;
}