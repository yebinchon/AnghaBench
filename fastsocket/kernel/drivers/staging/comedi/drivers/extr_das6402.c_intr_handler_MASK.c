#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  attached; struct comedi_subdevice* subdevices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_4__ {scalar_t__ ai_bytes_to_read; scalar_t__ das6402_wordsread; scalar_t__ das6402_irqcount; scalar_t__ das6402_ignoreirq; } ;
struct TYPE_3__ {scalar_t__ buf_write_count; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMEDI_CB_EOA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SCANL ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_2__* devpriv ; 
 scalar_t__ diff ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->subdevices;

	if (!dev->attached || devpriv->das6402_ignoreirq) {
		FUNC5("das6402: BUG: spurious interrupt\n");
		return IRQ_HANDLED;
	}
#ifdef DEBUG
	printk("das6402: interrupt! das6402_irqcount=%i\n",
	       devpriv->das6402_irqcount);
	printk("das6402: iobase+2=%i\n", inw_p(dev->iobase + 2));
#endif

	FUNC1(dev, s);

	if (s->async->buf_write_count >= devpriv->ai_bytes_to_read) {
		FUNC4(SCANL, dev->iobase + 2);	/* clears the fifo */
		FUNC3(0x07, dev->iobase + 8);	/* clears all flip-flops */
#ifdef DEBUG
		printk("das6402: Got %i samples\n\n",
		       devpriv->das6402_wordsread - diff);
#endif
		s->async->events |= COMEDI_CB_EOA;
		FUNC0(dev, s);
	}

	FUNC3(0x01, dev->iobase + 8);	/* clear only the interrupt flip-flop */

	FUNC0(dev, s);
	return IRQ_HANDLED;
}