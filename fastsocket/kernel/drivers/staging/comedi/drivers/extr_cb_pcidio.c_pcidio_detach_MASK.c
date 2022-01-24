#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {scalar_t__ subdevices; int /*<<< orphan*/  minor; } ;
struct TYPE_4__ {scalar_t__ pci_dev; scalar_t__ dio_reg_base; } ;
struct TYPE_3__ {int n_8255; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,scalar_t__) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	FUNC2("comedi%d: cb_pcidio: remove\n", dev->minor);
	if (devpriv) {
		if (devpriv->pci_dev) {
			if (devpriv->dio_reg_base) {
				FUNC0(devpriv->pci_dev);
			}
			FUNC1(devpriv->pci_dev);
		}
	}
	if (dev->subdevices) {
		int i;
		for (i = 0; i < thisboard->n_8255; i++) {
			FUNC3(dev, dev->subdevices + i);
		}
	}
	return 0;
}