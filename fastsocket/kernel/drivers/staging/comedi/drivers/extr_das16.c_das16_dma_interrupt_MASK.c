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
struct comedi_device {scalar_t__ iobase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int DAS16_INT ; 
 scalar_t__ DAS16_STATUS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *d)
{
	int status;
	struct comedi_device *dev = d;

	status = FUNC2(dev->iobase + DAS16_STATUS);

	if ((status & DAS16_INT) == 0) {
		FUNC0("spurious interrupt\n");
		return IRQ_NONE;
	}

	/* clear interrupt */
	FUNC3(0x00, dev->iobase + DAS16_STATUS);
	FUNC1(dev);
	return IRQ_HANDLED;
}