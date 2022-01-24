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
struct comedi_device {scalar_t__ irq; scalar_t__ iobase; } ;
struct TYPE_2__ {scalar_t__ isapnp_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NI_SIZE ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct comedi_device *dev)
{
	FUNC1(dev);

	if (dev->iobase)
		FUNC3(dev->iobase, NI_SIZE);
	if (dev->irq) {
		FUNC0(dev->irq, dev);
	}
	if (devpriv->isapnp_dev)
		FUNC2(devpriv->isapnp_dev);

	return 0;
}