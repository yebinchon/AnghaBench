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
struct comedi_device {scalar_t__ private; scalar_t__ irq; } ;
struct TYPE_2__ {scalar_t__ card; scalar_t__ io_addr; scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_VENDOR_ID_ICP ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ pci_list_builded ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev)
{

	if (dev->private)
		if (devpriv->valid)
			FUNC1(dev);

	if (dev->irq)
		FUNC0(dev->irq, dev);

	if (dev->private && devpriv->io_addr)
		FUNC2(devpriv->io_addr);

	if (dev->private && devpriv->card)
		FUNC3(devpriv->card);

	if (--pci_list_builded == 0)
		FUNC4(PCI_VENDOR_ID_ICP);

	return 0;
}