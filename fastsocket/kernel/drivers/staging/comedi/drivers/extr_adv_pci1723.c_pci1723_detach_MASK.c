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
struct comedi_device {scalar_t__ iobase; scalar_t__ private; int /*<<< orphan*/  minor; } ;
struct TYPE_2__ {scalar_t__ pcidev; scalar_t__ valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	FUNC3("comedi%d: pci1723: remove\n", dev->minor);

	if (dev->private) {
		if (devpriv->valid)
			FUNC1(dev);

		if (devpriv->pcidev) {
			if (dev->iobase) {
				FUNC0(devpriv->pcidev);
			}
			FUNC2(devpriv->pcidev);
		}
	}

	return 0;
}