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
struct comedi_device {scalar_t__ irq; } ;
struct TYPE_2__ {scalar_t__ io_addr; scalar_t__ pci_dev; scalar_t__ phys_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	if (dev->irq)
		FUNC1(dev->irq, dev);

	if (devpriv) {
		if (devpriv->pci_dev) {
			if (devpriv->phys_addr) {
				FUNC0(devpriv->pci_dev);
			}
			FUNC3(devpriv->pci_dev);
		}
		if (devpriv->io_addr)
			FUNC2(devpriv->io_addr);
	}
	/* XXX */

	return 0;
}