#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct nidio96_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int /*<<< orphan*/  async_dma_dir; int /*<<< orphan*/ * buf_change; int /*<<< orphan*/ * cancel; int /*<<< orphan*/ * do_cmdtest; int /*<<< orphan*/ * do_cmd; int /*<<< orphan*/ * insn_bits; int /*<<< orphan*/ * insn_config; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  type; } ;
struct comedi_device {unsigned int irq; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; int /*<<< orphan*/  board_name; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {int /*<<< orphan*/ * options; } ;
struct TYPE_10__ {TYPE_3__* mite; int /*<<< orphan*/ * di_mite_ring; int /*<<< orphan*/  mite_channel_lock; } ;
struct TYPE_9__ {scalar_t__ daq_io_addr; TYPE_1__* pcidev; } ;
struct TYPE_8__ {int n_8255; int /*<<< orphan*/  is_diodaq; scalar_t__ uses_firmware; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_DIO ; 
 scalar_t__ Chip_Version ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ Master_DMA_And_Interrupt_Control ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int SDF_CMD_READ ; 
 int SDF_LSAMPL ; 
 int SDF_PACKED ; 
 int SDF_READABLE ; 
 int SDF_WRITABLE ; 
 int FUNC4 (struct comedi_device*,int) ; 
 int FUNC5 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int /*<<< orphan*/ *) ; 
 TYPE_6__* devpriv ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_3__*) ; 
 unsigned int FUNC8 (TYPE_3__*) ; 
 int FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  ni_pcidio_cancel ; 
 int /*<<< orphan*/  ni_pcidio_change ; 
 int /*<<< orphan*/  ni_pcidio_cmd ; 
 int /*<<< orphan*/  ni_pcidio_cmdtest ; 
 int /*<<< orphan*/  ni_pcidio_insn_bits ; 
 int /*<<< orphan*/  ni_pcidio_insn_config ; 
 int /*<<< orphan*/  nidio96_8255_cb ; 
 int FUNC10 (struct comedi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nidio_interrupt ; 
 int FUNC11 (struct comedi_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  range_digital ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int FUNC14 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ ,unsigned long) ; 
 TYPE_2__* this_board ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC19(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct comedi_subdevice *s;
	int i;
	int ret;
	int n_subdevices;
	unsigned int irq;

	FUNC12("comedi%d: nidio:", dev->minor);

	if ((ret = FUNC4(dev, sizeof(struct nidio96_private))) < 0)
		return ret;
	FUNC15(&devpriv->mite_channel_lock);

	ret = FUNC10(dev, it->options[0], it->options[1]);
	if (ret < 0)
		return ret;

	ret = FUNC9(devpriv->mite);
	if (ret < 0) {
		FUNC12("error setting up mite\n");
		return ret;
	}
	FUNC6(dev, &devpriv->mite->pcidev->dev);
	devpriv->di_mite_ring = FUNC7(devpriv->mite);
	if (devpriv->di_mite_ring == NULL)
		return -ENOMEM;

	dev->board_name = this_board->name;
	irq = FUNC8(devpriv->mite);
	FUNC12(" %s", dev->board_name);
	if (this_board->uses_firmware) {
		ret = FUNC11(dev, it->options);
		if (ret < 0)
			return ret;
	}
	if (!this_board->is_diodaq) {
		n_subdevices = this_board->n_8255;
	} else {
		n_subdevices = 1;
	}
	if ((ret = FUNC5(dev, n_subdevices)) < 0)
		return ret;

	if (!this_board->is_diodaq) {
		for (i = 0; i < this_board->n_8255; i++) {
			FUNC16(dev, dev->subdevices + i,
					 nidio96_8255_cb,
					 (unsigned long)(devpriv->mite->
							 daq_io_addr +
							 FUNC0(i)));
		}
	} else {

		FUNC12(" rev=%d",
		       FUNC13(devpriv->mite->daq_io_addr + Chip_Version));

		s = dev->subdevices + 0;

		dev->read_subdev = s;
		s->type = COMEDI_SUBD_DIO;
		s->subdev_flags =
		    SDF_READABLE | SDF_WRITABLE | SDF_LSAMPL | SDF_PACKED |
		    SDF_CMD_READ;
		s->n_chan = 32;
		s->range_table = &range_digital;
		s->maxdata = 1;
		s->insn_config = &ni_pcidio_insn_config;
		s->insn_bits = &ni_pcidio_insn_bits;
		s->do_cmd = &ni_pcidio_cmd;
		s->do_cmdtest = &ni_pcidio_cmdtest;
		s->cancel = &ni_pcidio_cancel;
		s->len_chanlist = 32;	/* XXX */
		s->buf_change = &ni_pcidio_change;
		s->async_dma_dir = DMA_BIDIRECTIONAL;

		FUNC18(0, devpriv->mite->daq_io_addr + FUNC1(0));
		FUNC18(0, devpriv->mite->daq_io_addr + FUNC2(0));
		FUNC18(0, devpriv->mite->daq_io_addr + FUNC3(0));

		/* disable interrupts on board */
		FUNC17(0x00,
		       devpriv->mite->daq_io_addr +
		       Master_DMA_And_Interrupt_Control);

		ret = FUNC14(irq, nidio_interrupt, IRQF_SHARED,
				  "ni_pcidio", dev);
		if (ret < 0) {
			FUNC12(" irq not available");
		}
		dev->irq = irq;
	}

	FUNC12("\n");

	return 0;
}