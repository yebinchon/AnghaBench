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
struct comedi_device {scalar_t__ subdevices; scalar_t__ irq; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ pci_dev; scalar_t__ s5933_config; } ;

/* Variables and functions */
 scalar_t__ AMCC_OP_REG_INTCSR ; 
 int /*<<< orphan*/  INTCSR_INBOX_INTR_STATUS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev)
{
	FUNC5("comedi%d: cb_pcidas: remove\n", dev->minor);

	if (devpriv) {
		if (devpriv->s5933_config) {
			/*  disable and clear interrupts on amcc s5933 */
			FUNC3(INTCSR_INBOX_INTR_STATUS,
			     devpriv->s5933_config + AMCC_OP_REG_INTCSR);
#ifdef CB_PCIDAS_DEBUG
			printk("detaching, incsr is 0x%x\n",
			       inl(devpriv->s5933_config + AMCC_OP_REG_INTCSR));
#endif
		}
	}
	if (dev->irq)
		FUNC1(dev->irq, dev);
	if (dev->subdevices)
		FUNC6(dev, dev->subdevices + 2);
	if (devpriv && devpriv->pci_dev) {
		if (devpriv->s5933_config) {
			FUNC0(devpriv->pci_dev);
		}
		FUNC4(devpriv->pci_dev);
	}

	return 0;
}