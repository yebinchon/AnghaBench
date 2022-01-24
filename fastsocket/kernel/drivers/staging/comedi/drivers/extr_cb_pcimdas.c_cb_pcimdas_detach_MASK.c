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
struct comedi_device {scalar_t__ irq; scalar_t__ minor; } ;
struct TYPE_2__ {scalar_t__ pci_dev; scalar_t__ BADR0; scalar_t__ BADR4; scalar_t__ BADR3; scalar_t__ BADR2; scalar_t__ BADR1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
#ifdef CBPCIMDAS_DEBUG
	if (devpriv) {
		printk("devpriv->BADR0 = 0x%lx\n", devpriv->BADR0);
		printk("devpriv->BADR1 = 0x%lx\n", devpriv->BADR1);
		printk("devpriv->BADR2 = 0x%lx\n", devpriv->BADR2);
		printk("devpriv->BADR3 = 0x%lx\n", devpriv->BADR3);
		printk("devpriv->BADR4 = 0x%lx\n", devpriv->BADR4);
	}
#endif
	FUNC3("comedi%d: cb_pcimdas: remove\n", dev->minor);
	if (dev->irq)
		FUNC1(dev->irq, dev);
	if (devpriv) {
		if (devpriv->pci_dev) {
			if (devpriv->BADR0) {
				FUNC0(devpriv->pci_dev);
			}
			FUNC2(devpriv->pci_dev);
		}
	}

	return 0;
}