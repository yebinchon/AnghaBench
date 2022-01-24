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
struct TYPE_5__ {unsigned int AssignedIRQ; } ;
struct TYPE_4__ {unsigned long BasePort1; } ;
struct pcmcia_device {TYPE_2__ irq; TYPE_1__ io; } ;
struct dio700_private {int dummy; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {unsigned long iobase; unsigned int irq; struct comedi_subdevice* subdevices; int /*<<< orphan*/  board_name; int /*<<< orphan*/  minor; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_6__ {int bustype; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct comedi_device*,int) ; 
 scalar_t__ FUNC1 (struct comedi_device*,int) ; 
#define  pcmcia_bustype 128 
 struct pcmcia_device* pcmcia_cur_dev ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*,int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_3__* thisboard ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev, struct comedi_devconfig *it)
{
	struct comedi_subdevice *s;
	unsigned long iobase = 0;
#ifdef incomplete
	unsigned int irq = 0;
#endif
	struct pcmcia_device *link;

	/* allocate and initialize dev->private */
	if (FUNC0(dev, sizeof(struct dio700_private)) < 0)
		return -ENOMEM;

	/*  get base address, irq etc. based on bustype */
	switch (thisboard->bustype) {
	case pcmcia_bustype:
		link = pcmcia_cur_dev;	/* XXX hack */
		if (!link)
			return -EIO;
		iobase = link->io.BasePort1;
#ifdef incomplete
		irq = link->irq.AssignedIRQ;
#endif
		break;
	default:
		FUNC2("bug! couldn't determine board type\n");
		return -EINVAL;
		break;
	}
	FUNC2("comedi%d: ni_daq_700: %s, io 0x%lx", dev->minor,
	       thisboard->name, iobase);
#ifdef incomplete
	if (irq) {
		printk(", irq %u", irq);
	}
#endif

	FUNC2("\n");

	if (iobase == 0) {
		FUNC2("io base address is zero!\n");
		return -EINVAL;
	}

	dev->iobase = iobase;

#ifdef incomplete
	/* grab our IRQ */
	dev->irq = irq;
#endif

	dev->board_name = thisboard->name;

	if (FUNC1(dev, 1) < 0)
		return -ENOMEM;

	/* DAQCard-700 dio */
	s = dev->subdevices + 0;
	FUNC3(dev, s, NULL, dev->iobase);

	return 0;
}