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
struct comedi_device {unsigned int n_subdevices; TYPE_1__* subdevices; scalar_t__ irq; } ;
struct TYPE_6__ {scalar_t__ daq_io_addr; } ;
struct TYPE_5__ {TYPE_3__* mite; } ;
struct TYPE_4__ {int /*<<< orphan*/ * private; } ;

/* Variables and functions */
 scalar_t__ Master_Interrupt_Control ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev)
{
	if (FUNC3(dev) && FUNC3(dev)->mite
	    && FUNC3(dev)->mite->daq_io_addr) {
		FUNC4(0x00,
		       FUNC3(dev)->mite->daq_io_addr +
		       Master_Interrupt_Control);
	}

	if (dev->irq) {
		FUNC0(dev->irq, dev);
	}

	if (FUNC3(dev)) {
		unsigned i;
		for (i = 0; i < dev->n_subdevices; ++i) {
			if (dev->subdevices[i].private) {
				FUNC1(dev->subdevices[i].private);
				dev->subdevices[i].private = NULL;
			}
		}
		if (FUNC3(dev)->mite) {
			FUNC2(FUNC3(dev)->mite);
		}
	}
	return 0;
}