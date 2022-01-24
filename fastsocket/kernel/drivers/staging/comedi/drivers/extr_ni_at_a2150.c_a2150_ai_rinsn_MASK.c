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
struct comedi_insn {unsigned int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int config_bits; int irq_dma_bits; } ;

/* Variables and functions */
 int AC0_BIT ; 
 int AC1_BIT ; 
 scalar_t__ CONFIG_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int DMA_EN_BIT ; 
 int DMA_INTR_EN_BIT ; 
 int ETIME ; 
 scalar_t__ FIFO_DATA_REG ; 
 scalar_t__ FIFO_RESET_REG ; 
 scalar_t__ FIFO_START_REG ; 
 int FNE_BIT ; 
 scalar_t__ IRQ_DMA_CNTRL_REG ; 
 scalar_t__ STATUS_REG ; 
 scalar_t__ TRIGGER_REG ; 
 scalar_t__ FUNC1 (struct comedi_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev, struct comedi_subdevice *s,
			  struct comedi_insn *insn, unsigned int *data)
{
	unsigned int i, n;
	static const int timeout = 100000;
	static const int filter_delay = 36;

	/*  clear fifo and reset triggering circuitry */
	FUNC5(0, dev->iobase + FIFO_RESET_REG);

	/* setup chanlist */
	if (FUNC1(dev, FUNC0(insn->chanspec), 1) < 0)
		return -1;

	/*  set dc coupling */
	devpriv->config_bits &= ~AC0_BIT;
	devpriv->config_bits &= ~AC1_BIT;

	/*  send timing, channel, config bits */
	FUNC5(devpriv->config_bits, dev->iobase + CONFIG_REG);

	/*  disable dma on card */
	devpriv->irq_dma_bits &= ~DMA_INTR_EN_BIT & ~DMA_EN_BIT;
	FUNC5(devpriv->irq_dma_bits, dev->iobase + IRQ_DMA_CNTRL_REG);

	/*  setup start triggering */
	FUNC5(0, dev->iobase + TRIGGER_REG);

	/*  start aquisition for soft trigger */
	FUNC5(0, dev->iobase + FIFO_START_REG);

	/* there is a 35.6 sample delay for data to get through the antialias filter */
	for (n = 0; n < filter_delay; n++) {
		for (i = 0; i < timeout; i++) {
			if (FUNC3(dev->iobase + STATUS_REG) & FNE_BIT)
				break;
			FUNC7(1);
		}
		if (i == timeout) {
			FUNC2(dev, "timeout");
			return -ETIME;
		}
		FUNC3(dev->iobase + FIFO_DATA_REG);
	}

	/*  read data */
	for (n = 0; n < insn->n; n++) {
		for (i = 0; i < timeout; i++) {
			if (FUNC3(dev->iobase + STATUS_REG) & FNE_BIT)
				break;
			FUNC7(1);
		}
		if (i == timeout) {
			FUNC2(dev, "timeout");
			return -ETIME;
		}
#ifdef A2150_DEBUG
		ni_dump_regs(dev);
#endif
		data[n] = FUNC3(dev->iobase + FIFO_DATA_REG);
#ifdef A2150_DEBUG
		printk(" data is %i\n", data[n]);
#endif
		data[n] ^= 0x8000;
	}

	/*  clear fifo and reset triggering circuitry */
	FUNC5(0, dev->iobase + FIFO_RESET_REG);

	return n;
}