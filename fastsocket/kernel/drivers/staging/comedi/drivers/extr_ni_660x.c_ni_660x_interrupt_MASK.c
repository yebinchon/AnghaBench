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
struct comedi_device {scalar_t__ attached; struct comedi_subdevice* subdevices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  interrupt_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 unsigned int FUNC2 (struct comedi_device*) ; 
 TYPE_1__* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s;
	unsigned i;
	unsigned long flags;

	if (dev->attached == 0)
		return IRQ_NONE;
	/* lock to avoid race with comedi_poll */
	FUNC5(&FUNC3(dev)->interrupt_lock, flags);
	FUNC4();
	for (i = 0; i < FUNC2(dev); ++i) {
		s = dev->subdevices + FUNC0(i);
		FUNC1(dev, s);
	}
	FUNC6(&FUNC3(dev)->interrupt_lock, flags);
	return IRQ_HANDLED;
}