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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pci_device; scalar_t__ plx_regbase_size; scalar_t__ plx_regbase; scalar_t__ me_regbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* dev_private ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	if (dev_private) {
		if (dev_private->me_regbase) {
			FUNC2(dev);
			FUNC1(dev_private->me_regbase);
		}
		if (dev_private->plx_regbase)
			FUNC1(dev_private->plx_regbase);
		if (dev_private->pci_device) {
			if (dev_private->plx_regbase_size)
				FUNC0(dev_private->pci_device);

			FUNC3(dev_private->pci_device);
		}
	}
	return 0;
}