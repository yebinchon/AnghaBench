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
struct comedi_device {scalar_t__ irq; } ;
struct TYPE_4__ {TYPE_1__* mite; } ;
struct TYPE_3__ {scalar_t__ daq_io_addr; } ;

/* Variables and functions */
 scalar_t__ Master_Interrupt_Control ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev)
{
	if (devpriv && devpriv->mite && devpriv->mite->daq_io_addr) {
		FUNC2(0x00,
		       devpriv->mite->daq_io_addr + Master_Interrupt_Control);
	}

	if (dev->irq) {
		FUNC0(dev->irq, dev);
	}

	if (devpriv && devpriv->mite) {
		FUNC1(devpriv->mite);
	}

	return 0;
}