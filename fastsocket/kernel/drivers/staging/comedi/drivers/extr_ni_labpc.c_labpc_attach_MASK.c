#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct labpc_private {int dummy; } ;
struct comedi_device {int dummy; } ;
struct comedi_devconfig {unsigned long* options; } ;
struct TYPE_7__ {TYPE_2__* mite; } ;
struct TYPE_6__ {scalar_t__ daq_io_addr; } ;
struct TYPE_5__ {int bustype; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct comedi_device*,int) ; 
 TYPE_4__* devpriv ; 
#define  isa_bustype 130 
 int FUNC1 (struct comedi_device*,unsigned long,unsigned int,unsigned int) ; 
 int FUNC2 (struct comedi_device*,unsigned int,unsigned int) ; 
 unsigned int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
#define  pci_bustype 129 
#define  pcmcia_bustype 128 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev, struct comedi_devconfig *it)
{
	unsigned long iobase = 0;
	unsigned int irq = 0;
	unsigned int dma_chan = 0;
#ifdef CONFIG_COMEDI_PCI
	int retval;
#endif

	/* allocate and initialize dev->private */
	if (FUNC0(dev, sizeof(struct labpc_private)) < 0)
		return -ENOMEM;

	/*  get base address, irq etc. based on bustype */
	switch (thisboard->bustype) {
	case isa_bustype:
		iobase = it->options[0];
		irq = it->options[1];
		dma_chan = it->options[2];
		break;
	case pci_bustype:
#ifdef CONFIG_COMEDI_PCI
		retval = labpc_find_device(dev, it->options[0], it->options[1]);
		if (retval < 0) {
			return retval;
		}
		retval = mite_setup(devpriv->mite);
		if (retval < 0)
			return retval;
		iobase = (unsigned long)devpriv->mite->daq_io_addr;
		irq = mite_irq(devpriv->mite);
#else
		FUNC5(" this driver has not been built with PCI support.\n");
		return -EINVAL;
#endif
		break;
	case pcmcia_bustype:
		FUNC5
		    (" this driver does not support pcmcia cards, use ni_labpc_cs.o\n");
		return -EINVAL;
		break;
	default:
		FUNC5("bug! couldn't determine board type\n");
		return -EINVAL;
		break;
	}

	return FUNC1(dev, iobase, irq, dma_chan);
}