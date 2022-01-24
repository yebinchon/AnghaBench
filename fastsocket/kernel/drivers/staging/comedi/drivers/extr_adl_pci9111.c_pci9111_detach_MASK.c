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
struct comedi_device {scalar_t__ private; scalar_t__ irq; scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ pci_device; scalar_t__ is_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* dev_private ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	/*  Reset device */

	if (dev->private != 0) {
		if (dev_private->is_valid)
			FUNC2(dev);

	}
	/*  Release previously allocated irq */

	if (dev->irq != 0) {
		FUNC1(dev->irq, dev);
	}

	if (dev_private != 0 && dev_private->pci_device != 0) {
		if (dev->iobase) {
			FUNC0(dev_private->pci_device);
		}
		FUNC3(dev_private->pci_device);
	}

	return 0;
}