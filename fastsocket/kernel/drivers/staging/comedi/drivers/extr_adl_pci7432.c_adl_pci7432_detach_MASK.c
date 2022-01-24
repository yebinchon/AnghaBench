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
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	FUNC2("comedi%d: pci7432: remove\n", dev->minor);

	if (devpriv && devpriv->pci_dev) {
		if (dev->iobase) {
			FUNC0(devpriv->pci_dev);
		}
		FUNC1(devpriv->pci_dev);
	}

	return 0;
}