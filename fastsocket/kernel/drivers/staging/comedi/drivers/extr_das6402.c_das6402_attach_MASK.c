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
struct das6402_private {int dummy; } ;
struct comedi_subdevice {int subdev_flags; int n_chan; int maxdata; int len_chanlist; int /*<<< orphan*/ * range_table; int /*<<< orphan*/  cancel; int /*<<< orphan*/  type; } ;
struct comedi_device {char* board_name; unsigned long iobase; unsigned int irq; struct comedi_subdevice* subdevices; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {unsigned long* options; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_SUBD_AI ; 
 int /*<<< orphan*/  DAS6402_SIZE ; 
 int EIO ; 
 int SDF_GROUND ; 
 int SDF_READABLE ; 
 int FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  das6402_ai_cancel ; 
 int /*<<< orphan*/  intr_handler ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  range_unknown ; 
 int FUNC4 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev,
			  struct comedi_devconfig *it)
{
	unsigned int irq;
	unsigned long iobase;
	int ret;
	struct comedi_subdevice *s;

	dev->board_name = "das6402";

	iobase = it->options[0];
	if (iobase == 0)
		iobase = 0x300;

	FUNC3("comedi%d: das6402: 0x%04lx", dev->minor, iobase);

	if (!FUNC5(iobase, DAS6402_SIZE, "das6402")) {
		FUNC3(" I/O port conflict\n");
		return -EIO;
	}
	dev->iobase = iobase;

	/* should do a probe here */

	irq = it->options[0];
	FUNC3(" ( irq = %u )", irq);
	ret = FUNC4(irq, intr_handler, 0, "das6402", dev);
	if (ret < 0) {
		FUNC3("irq conflict\n");
		return ret;
	}
	dev->irq = irq;

	ret = FUNC0(dev, sizeof(struct das6402_private));
	if (ret < 0)
		return ret;

	ret = FUNC1(dev, 1);
	if (ret < 0)
		return ret;

	/* ai subdevice */
	s = dev->subdevices + 0;
	s->type = COMEDI_SUBD_AI;
	s->subdev_flags = SDF_READABLE | SDF_GROUND;
	s->n_chan = 8;
	/* s->trig[2]=das6402_ai_mode2; */
	s->cancel = das6402_ai_cancel;
	s->maxdata = (1 << 12) - 1;
	s->len_chanlist = 16;	/* ? */
	s->range_table = &range_unknown;

	FUNC2(dev);

	return 0;
}