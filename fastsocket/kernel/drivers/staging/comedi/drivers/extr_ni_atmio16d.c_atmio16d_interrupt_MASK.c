#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct comedi_subdevice {int /*<<< orphan*/  async; } ;
struct comedi_device {scalar_t__ iobase; struct comedi_subdevice* subdevices; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ AD_FIFO_REG ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *d)
{
	struct comedi_device *dev = d;
	struct comedi_subdevice *s = dev->subdevices + 0;

/* printk("atmio16d_interrupt!\n"); */

	FUNC0(s->async, FUNC2(dev->iobase + AD_FIFO_REG));

	FUNC1(dev, s);
	return IRQ_HANDLED;
}