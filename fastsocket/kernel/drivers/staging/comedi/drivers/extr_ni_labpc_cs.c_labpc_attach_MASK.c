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
struct labpc_private {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_devconfig {int dummy; } ;
struct TYPE_6__ {int bustype; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct comedi_device*,int) ; 
 int FUNC1 (struct comedi_device*,unsigned long,unsigned int,int /*<<< orphan*/ ) ; 
#define  pcmcia_bustype 128 
 struct pcmcia_device* pcmcia_cur_dev ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__* thisboard ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev, struct comedi_devconfig *it)
{
	unsigned long iobase = 0;
	unsigned int irq = 0;
	struct pcmcia_device *link;

	/* allocate and initialize dev->private */
	if (FUNC0(dev, sizeof(struct labpc_private)) < 0)
		return -ENOMEM;

	/*  get base address, irq etc. based on bustype */
	switch (thisboard->bustype) {
	case pcmcia_bustype:
		link = pcmcia_cur_dev;	/* XXX hack */
		if (!link)
			return -EIO;
		iobase = link->io.BasePort1;
		irq = link->irq.AssignedIRQ;
		break;
	default:
		FUNC2("bug! couldn't determine board type\n");
		return -EINVAL;
		break;
	}
	return FUNC1(dev, iobase, irq, 0);
}