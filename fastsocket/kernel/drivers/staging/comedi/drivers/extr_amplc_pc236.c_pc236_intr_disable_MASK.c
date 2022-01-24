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
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {scalar_t__ lcr_iobase; scalar_t__ enable_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI236_INTR_DISABLE ; 
 scalar_t__ PLX9052_INTCSR ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	unsigned long flags;

	FUNC1(&dev->spinlock, flags);
	devpriv->enable_irq = 0;
#ifdef CONFIG_COMEDI_PCI
	if (devpriv->lcr_iobase)
		outl(PCI236_INTR_DISABLE, devpriv->lcr_iobase + PLX9052_INTCSR);
#endif
	FUNC2(&dev->spinlock, flags);
}