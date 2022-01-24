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
struct comedi_device {scalar_t__ irq; scalar_t__ subdevices; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ pci_dev; scalar_t__ got_regions; scalar_t__ plx; scalar_t__ daq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
	FUNC4("comedi%d: daqboard2000: remove\n", dev->minor);

	if (dev->subdevices)
		FUNC5(dev, dev->subdevices + 2);

	if (dev->irq) {
		FUNC1(dev->irq, dev);
	}
	if (devpriv) {
		if (devpriv->daq)
			FUNC2(devpriv->daq);
		if (devpriv->plx)
			FUNC2(devpriv->plx);
		if (devpriv->pci_dev) {
			if (devpriv->got_regions) {
				FUNC0(devpriv->pci_dev);
			}
			FUNC3(devpriv->pci_dev);
		}
	}
	return 0;
}