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
typedef  int uint32_t ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  attached; struct comedi_subdevice* read_subdev; } ;
struct comedi_async {int events; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ dio_count; scalar_t__ plx9080_iobase; scalar_t__ hpdi_iobase; } ;

/* Variables and functions */
 scalar_t__ BOARD_STATUS_REG ; 
 int COMEDI_CB_EOA ; 
 int COMEDI_CB_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ICS_DMA0_A ; 
 int ICS_DMA1_A ; 
 int ICS_LDIA ; 
 int ICS_LIA ; 
 scalar_t__ INTERRUPT_STATUS_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int PLX_CLEAR_DMA_INTR_BIT ; 
 scalar_t__ PLX_DBR_OUT_REG ; 
 scalar_t__ PLX_DMA0_CS_REG ; 
 scalar_t__ PLX_DMA1_CS_REG ; 
 int PLX_DMA_EN_BIT ; 
 scalar_t__ PLX_INTRCS_REG ; 
 int RX_OVERRUN_BIT ; 
 int RX_UNDERRUN_BIT ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct comedi_device*) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->read_subdev;
	struct comedi_async *async = s->async;
	uint32_t hpdi_intr_status, hpdi_board_status;
	uint32_t plx_status;
	uint32_t plx_bits;
	uint8_t dma0_status, dma1_status;
	unsigned long flags;

	if (!dev->attached) {
		return IRQ_NONE;
	}

	plx_status = FUNC6(FUNC4(dev)->plx9080_iobase + PLX_INTRCS_REG);
	if ((plx_status & (ICS_DMA0_A | ICS_DMA1_A | ICS_LIA)) == 0) {
		return IRQ_NONE;
	}

	hpdi_intr_status = FUNC6(FUNC4(dev)->hpdi_iobase + INTERRUPT_STATUS_REG);
	hpdi_board_status = FUNC6(FUNC4(dev)->hpdi_iobase + BOARD_STATUS_REG);

	async->events = 0;

	if (hpdi_intr_status) {
		FUNC0("hpdi: intr status 0x%x, ", hpdi_intr_status);
		FUNC10(hpdi_intr_status,
		       FUNC4(dev)->hpdi_iobase + INTERRUPT_STATUS_REG);
	}
	/*  spin lock makes sure noone else changes plx dma control reg */
	FUNC7(&dev->spinlock, flags);
	dma0_status = FUNC5(FUNC4(dev)->plx9080_iobase + PLX_DMA0_CS_REG);
	if (plx_status & ICS_DMA0_A) {	/*  dma chan 0 interrupt */
		FUNC9((dma0_status & PLX_DMA_EN_BIT) | PLX_CLEAR_DMA_INTR_BIT,
		       FUNC4(dev)->plx9080_iobase + PLX_DMA0_CS_REG);

		FUNC0("dma0 status 0x%x\n", dma0_status);
		if (dma0_status & PLX_DMA_EN_BIT) {
			FUNC3(dev, 0);
		}
		FUNC0(" cleared dma ch0 interrupt\n");
	}
	FUNC8(&dev->spinlock, flags);

	/*  spin lock makes sure noone else changes plx dma control reg */
	FUNC7(&dev->spinlock, flags);
	dma1_status = FUNC5(FUNC4(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
	if (plx_status & ICS_DMA1_A) {	/*  XXX *//*  dma chan 1 interrupt */
		FUNC9((dma1_status & PLX_DMA_EN_BIT) | PLX_CLEAR_DMA_INTR_BIT,
		       FUNC4(dev)->plx9080_iobase + PLX_DMA1_CS_REG);
		FUNC0("dma1 status 0x%x\n", dma1_status);

		FUNC0(" cleared dma ch1 interrupt\n");
	}
	FUNC8(&dev->spinlock, flags);

	/*  clear possible plx9080 interrupt sources */
	if (plx_status & ICS_LDIA) {	/*  clear local doorbell interrupt */
		plx_bits = FUNC6(FUNC4(dev)->plx9080_iobase + PLX_DBR_OUT_REG);
		FUNC10(plx_bits, FUNC4(dev)->plx9080_iobase + PLX_DBR_OUT_REG);
		FUNC0(" cleared local doorbell bits 0x%x\n", plx_bits);
	}

	if (hpdi_board_status & RX_OVERRUN_BIT) {
		FUNC2(dev, "rx fifo overrun");
		async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
		FUNC0("dma0_status 0x%x\n",
			    (int)FUNC5(FUNC4(dev)->plx9080_iobase +
				       PLX_DMA0_CS_REG));
	}

	if (hpdi_board_status & RX_UNDERRUN_BIT) {
		FUNC2(dev, "rx fifo underrun");
		async->events |= COMEDI_CB_EOA | COMEDI_CB_ERROR;
	}

	if (FUNC4(dev)->dio_count == 0)
		async->events |= COMEDI_CB_EOA;

	FUNC0("board status 0x%x, ", hpdi_board_status);
	FUNC0("plx status 0x%x\n", plx_status);
	if (async->events)
		FUNC0(" events 0x%x\n", async->events);

	FUNC1(dev, s);

	return IRQ_HANDLED;
}