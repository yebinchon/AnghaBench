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
struct comedi_device {int /*<<< orphan*/  minor; scalar_t__ subdevices; } ;
struct TYPE_2__ {scalar_t__ pci_dev; scalar_t__ dac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
/*
 * Deallocate the I/O ports.
 */
	if (devpriv) {
		if (devpriv->pci_dev) {
			if (devpriv->dac) {
				FUNC0(devpriv->pci_dev);
			}
			FUNC1(devpriv->pci_dev);
		}
	}
	/*  cleanup 8255 */
	if (dev->subdevices) {
		FUNC3(dev, dev->subdevices + 1);
		FUNC3(dev, dev->subdevices + 2);
	}

	FUNC2("comedi%d: cb_pcidda: remove\n", dev->minor);

	return 0;
}