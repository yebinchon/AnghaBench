#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {scalar_t__ iobase; int /*<<< orphan*/  minor; } ;
struct TYPE_8__ {scalar_t__ sprivs; TYPE_1__* asics; } ;
struct TYPE_7__ {int /*<<< orphan*/  driver_name; } ;
struct TYPE_6__ {int num_asics; } ;
struct TYPE_5__ {scalar_t__ irq; } ;

/* Variables and functions */
 int ASIC_IOSIZE ; 
 int MAX_ASICS ; 
 TYPE_4__* devpriv ; 
 TYPE_3__ driver ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 TYPE_2__* thisboard ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	int i;

	FUNC2("comedi%d: %s: remove\n", dev->minor, driver.driver_name);
	if (dev->iobase)
		FUNC3(dev->iobase, ASIC_IOSIZE * thisboard->num_asics);

	for (i = 0; i < MAX_ASICS; ++i) {
		if (devpriv->asics[i].irq)
			FUNC0(devpriv->asics[i].irq, dev);
	}

	if (devpriv && devpriv->sprivs)
		FUNC1(devpriv->sprivs);

	return 0;
}