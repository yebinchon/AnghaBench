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
struct jr3_pci_dev_private {int n_channels; scalar_t__ pci_dev; scalar_t__ pci_enabled; scalar_t__ iobase; int /*<<< orphan*/  timer; } ;
struct comedi_device {TYPE_1__* subdevices; int /*<<< orphan*/  minor; struct jr3_pci_dev_private* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct comedi_device *dev)
{
	int i;
	struct jr3_pci_dev_private *devpriv = dev->private;

	FUNC5("comedi%d: jr3_pci: remove\n", dev->minor);
	if (devpriv) {
		FUNC1(&devpriv->timer);

		if (dev->subdevices) {
			for (i = 0; i < devpriv->n_channels; i++) {
				FUNC3(dev->subdevices[i].private);
			}
		}

		if (devpriv->iobase) {
			FUNC2((void *)devpriv->iobase);
		}
		if (devpriv->pci_enabled) {
			FUNC0(devpriv->pci_dev);
		}

		if (devpriv->pci_dev) {
			FUNC4(devpriv->pci_dev);
		}
	}
	return 0;
}