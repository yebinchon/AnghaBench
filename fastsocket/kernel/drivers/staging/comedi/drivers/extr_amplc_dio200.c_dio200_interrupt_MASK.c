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
struct comedi_device {scalar_t__ subdevices; int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ intr_sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* devpriv ; 
 int FUNC1 (struct comedi_device*,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *d)
{
	struct comedi_device *dev = d;
	int handled;

	if (!dev->attached) {
		return IRQ_NONE;
	}

	if (devpriv->intr_sd >= 0) {
		handled = FUNC1(dev,
						  dev->subdevices +
						  devpriv->intr_sd);
	} else {
		handled = 0;
	}

	return FUNC0(handled);
}