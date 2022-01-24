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
struct comedi_device {scalar_t__ iobase; scalar_t__ irq; scalar_t__ subdevices; int /*<<< orphan*/  minor; } ;
struct TYPE_4__ {scalar_t__ pci_dev; } ;
struct TYPE_3__ {scalar_t__ have_dio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,scalar_t__) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev)
{
	FUNC3("comedi%d: amplc_pci230: remove\n", dev->minor);

	if (dev->subdevices && thisboard->have_dio)
		/* Clean up dio subdevice. */
		FUNC4(dev, dev->subdevices + 2);

	if (dev->irq)
		FUNC1(dev->irq, dev);

	if (devpriv) {
		if (devpriv->pci_dev) {
			if (dev->iobase) {
				FUNC0(devpriv->pci_dev);
			}
			FUNC2(devpriv->pci_dev);
		}
	}

	return 0;
}