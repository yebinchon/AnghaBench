#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {int subdev_flags; int n_chan; int len_chanlist; int maxdata; int /*<<< orphan*/  cancel; int /*<<< orphan*/  insn_read; int /*<<< orphan*/  do_cmdtest; int /*<<< orphan*/  do_cmd; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {unsigned long iobase; unsigned int irq; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; int /*<<< orphan*/  board_name; scalar_t__ board_ptr; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct a2150_private {int dummy; } ;
struct TYPE_6__ {int irq_dma_bits; unsigned int dma; int config_bits; int /*<<< orphan*/ * dma_buffer; } ;
struct TYPE_5__ {int /*<<< orphan*/  driver_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  A2150_DMA_BUFFER_SIZE ; 
 int /*<<< orphan*/  A2150_SIZE ; 
 int APD_BIT ; 
 int /*<<< orphan*/  COMEDI_SUBD_AI ; 
 scalar_t__ CONFIG_REG ; 
 int DCAL_BIT ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int DPD_BIT ; 
 int EINVAL ; 
 int EIO ; 
 int ENABLE0_BIT ; 
 int ENABLE1_BIT ; 
 int ENOMEM ; 
 int ETIME ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int HW_COUNT_DISABLE ; 
 scalar_t__ I8253_MODE_REG ; 
 scalar_t__ IRQ_DMA_CNTRL_REG ; 
 int FUNC1 (unsigned int) ; 
 int SDF_CMD_READ ; 
 int SDF_GROUND ; 
 int SDF_OTHER ; 
 int SDF_READABLE ; 
 scalar_t__ STATUS_REG ; 
 int /*<<< orphan*/  a2150_ai_cmd ; 
 int /*<<< orphan*/  a2150_ai_cmdtest ; 
 int /*<<< orphan*/  a2150_ai_rinsn ; 
 scalar_t__ a2150_boards ; 
 int /*<<< orphan*/  a2150_cancel ; 
 int /*<<< orphan*/  a2150_interrupt ; 
 scalar_t__ FUNC2 (struct comedi_device*) ; 
 scalar_t__ FUNC3 (struct comedi_device*,int) ; 
 scalar_t__ FUNC4 (struct comedi_device*,int) ; 
 TYPE_3__* devpriv ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 TYPE_2__ driver_a2150 ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  range_a2150 ; 
 scalar_t__ FUNC11 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* thisboard ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct comedi_subdevice *s;
	unsigned long iobase = it->options[0];
	unsigned int irq = it->options[1];
	unsigned int dma = it->options[2];
	static const int timeout = 2000;
	int i;

	FUNC10("comedi%d: %s: io 0x%lx", dev->minor, driver_a2150.driver_name,
	       iobase);
	if (irq) {
		FUNC10(", irq %u", irq);
	} else {
		FUNC10(", no irq");
	}
	if (dma) {
		FUNC10(", dma %u", dma);
	} else {
		FUNC10(", no dma");
	}
	FUNC10("\n");

	/* allocate and initialize dev->private */
	if (FUNC3(dev, sizeof(struct a2150_private)) < 0)
		return -ENOMEM;

	if (iobase == 0) {
		FUNC10(" io base address required\n");
		return -EINVAL;
	}

	/* check if io addresses are available */
	if (!FUNC13(iobase, A2150_SIZE, driver_a2150.driver_name)) {
		FUNC10(" I/O port conflict\n");
		return -EIO;
	}
	dev->iobase = iobase;

	/* grab our IRQ */
	if (irq) {
		/*  check that irq is supported */
		if (irq < 3 || irq == 8 || irq == 13 || irq > 15) {
			FUNC10(" invalid irq line %u\n", irq);
			return -EINVAL;
		}
		if (FUNC12(irq, a2150_interrupt, 0,
				driver_a2150.driver_name, dev)) {
			FUNC10("unable to allocate irq %u\n", irq);
			return -EINVAL;
		}
		devpriv->irq_dma_bits |= FUNC1(irq);
		dev->irq = irq;
	}
	/*  initialize dma */
	if (dma) {
		if (dma == 4 || dma > 7) {
			FUNC10(" invalid dma channel %u\n", dma);
			return -EINVAL;
		}
		if (FUNC11(dma, driver_a2150.driver_name)) {
			FUNC10(" failed to allocate dma channel %u\n", dma);
			return -EINVAL;
		}
		devpriv->dma = dma;
		devpriv->dma_buffer =
		    FUNC7(A2150_DMA_BUFFER_SIZE, GFP_KERNEL | GFP_DMA);
		if (devpriv->dma_buffer == NULL)
			return -ENOMEM;

		FUNC5(dma);
		FUNC14(dma, DMA_MODE_READ);

		devpriv->irq_dma_bits |= FUNC0(dma);
	}

	dev->board_ptr = a2150_boards + FUNC2(dev);
	dev->board_name = thisboard->name;

	if (FUNC4(dev, 1) < 0)
		return -ENOMEM;

	/* analog input subdevice */
	s = dev->subdevices + 0;
	dev->read_subdev = s;
	s->type = COMEDI_SUBD_AI;
	s->subdev_flags = SDF_READABLE | SDF_GROUND | SDF_OTHER | SDF_CMD_READ;
	s->n_chan = 4;
	s->len_chanlist = 4;
	s->maxdata = 0xffff;
	s->range_table = &range_a2150;
	s->do_cmd = a2150_ai_cmd;
	s->do_cmdtest = a2150_ai_cmdtest;
	s->insn_read = a2150_ai_rinsn;
	s->cancel = a2150_cancel;

	/* need to do this for software counting of completed conversions, to
	 * prevent hardware count from stopping aquisition */
	FUNC8(HW_COUNT_DISABLE, dev->iobase + I8253_MODE_REG);

	/*  set card's irq and dma levels */
	FUNC8(devpriv->irq_dma_bits, dev->iobase + IRQ_DMA_CNTRL_REG);

	/*  reset and sync adc clock circuitry */
	FUNC9(DPD_BIT | APD_BIT, dev->iobase + CONFIG_REG);
	FUNC9(DPD_BIT, dev->iobase + CONFIG_REG);
	/*  initialize configuration register */
	devpriv->config_bits = 0;
	FUNC8(devpriv->config_bits, dev->iobase + CONFIG_REG);
	/*  wait until offset calibration is done, then enable analog inputs */
	for (i = 0; i < timeout; i++) {
		if ((DCAL_BIT & FUNC6(dev->iobase + STATUS_REG)) == 0)
			break;
		FUNC15(1000);
	}
	if (i == timeout) {
		FUNC10
		    (" timed out waiting for offset calibration to complete\n");
		return -ETIME;
	}
	devpriv->config_bits |= ENABLE0_BIT | ENABLE1_BIT;
	FUNC8(devpriv->config_bits, dev->iobase + CONFIG_REG);

	return 0;
}