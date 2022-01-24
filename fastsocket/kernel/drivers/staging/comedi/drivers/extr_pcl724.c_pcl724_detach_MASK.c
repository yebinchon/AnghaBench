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
struct comedi_device {int n_subdevices; int /*<<< orphan*/  iobase; scalar_t__ irq; scalar_t__ subdevices; } ;
struct TYPE_2__ {int /*<<< orphan*/  io_range; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,scalar_t__) ; 
 TYPE_1__* this_board ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	int i;

/* printk("comedi%d: pcl724: remove\n",dev->minor); */

	for (i = 0; i < dev->n_subdevices; i++) {
		FUNC2(dev, dev->subdevices + i);
	}

#ifdef PCL724_IRQ
	if (dev->irq) {
		free_irq(dev->irq, dev);
	}
#endif

	FUNC1(dev->iobase, this_board->io_range);

	return 0;
}