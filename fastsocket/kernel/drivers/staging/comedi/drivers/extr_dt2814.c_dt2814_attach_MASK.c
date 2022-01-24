#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct dt2814_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int len_chanlist; int maxdata; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  do_cmdtest; int /*<<< orphan*/  do_cmd; int /*<<< orphan*/  insn_read; int /*<<< orphan*/  type; } ;
struct comedi_device {unsigned long iobase; char* board_name; int irq; struct comedi_subdevice* read_subdev; struct comedi_subdevice* subdevices; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {unsigned long* options; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AI ; 
 scalar_t__ DT2814_CSR ; 
 scalar_t__ DT2814_DATA ; 
 int DT2814_ERR ; 
 int /*<<< orphan*/  DT2814_SIZE ; 
 int EIO ; 
 int SDF_CMD_READ ; 
 int SDF_GROUND ; 
 int SDF_READABLE ; 
 int FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  dt2814_ai_cmd ; 
 int /*<<< orphan*/  dt2814_ai_cmdtest ; 
 int /*<<< orphan*/  dt2814_ai_insn_read ; 
 int /*<<< orphan*/  dt2814_interrupt ; 
 int /*<<< orphan*/  flags ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  irqs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  range_unknown ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct comedi_device *dev, struct comedi_devconfig *it)
{
	int i, irq;
	int ret;
	struct comedi_subdevice *s;
	unsigned long iobase;

	iobase = it->options[0];
	FUNC4("comedi%d: dt2814: 0x%04lx ", dev->minor, iobase);
	if (!FUNC8(iobase, DT2814_SIZE, "dt2814")) {
		FUNC4("I/O port conflict\n");
		return -EIO;
	}
	dev->iobase = iobase;
	dev->board_name = "dt2814";

	FUNC3(0, dev->iobase + DT2814_CSR);
	FUNC12(100);
	if (FUNC2(dev->iobase + DT2814_CSR) & DT2814_ERR) {
		FUNC4("reset error (fatal)\n");
		return -EIO;
	}
	i = FUNC2(dev->iobase + DT2814_DATA);
	i = FUNC2(dev->iobase + DT2814_DATA);

	irq = it->options[1];
#if 0
	if (irq < 0) {
		save_flags(flags);
		sti();
		irqs = probe_irq_on();

		outb(0, dev->iobase + DT2814_CSR);

		udelay(100);

		irq = probe_irq_off(irqs);
		restore_flags(flags);
		if (inb(dev->iobase + DT2814_CSR) & DT2814_ERR) {
			printk("error probing irq (bad) \n");
		}

		i = inb(dev->iobase + DT2814_DATA);
		i = inb(dev->iobase + DT2814_DATA);
	}
#endif
	dev->irq = 0;
	if (irq > 0) {
		if (FUNC7(irq, dt2814_interrupt, 0, "dt2814", dev)) {
			FUNC4("(irq %d unavailable)\n", irq);
		} else {
			FUNC4("( irq = %d )\n", irq);
			dev->irq = irq;
		}
	} else if (irq == 0) {
		FUNC4("(no irq)\n");
	} else {
#if 0
		printk("(probe returned multiple irqs--bad)\n");
#else
		FUNC4("(irq probe not implemented)\n");
#endif
	}

	ret = FUNC1(dev, 1);
	if (ret < 0)
		return ret;

	ret = FUNC0(dev, sizeof(struct dt2814_private));
	if (ret < 0)
		return ret;

	s = dev->subdevices + 0;
	dev->read_subdev = s;
	s->type = COMEDI_SUBD_AI;
	s->subdev_flags = SDF_READABLE | SDF_GROUND | SDF_CMD_READ;
	s->n_chan = 16;		/* XXX */
	s->len_chanlist = 1;
	s->insn_read = dt2814_ai_insn_read;
	s->do_cmd = dt2814_ai_cmd;
	s->do_cmdtest = dt2814_ai_cmdtest;
	s->maxdata = 0xfff;
	s->range_table = &range_unknown;	/* XXX */

	return 0;
}