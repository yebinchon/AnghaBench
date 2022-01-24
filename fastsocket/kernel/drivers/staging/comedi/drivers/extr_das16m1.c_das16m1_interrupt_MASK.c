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
struct comedi_device {scalar_t__ attached; int /*<<< orphan*/  spinlock; scalar_t__ iobase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DAS16M1_CLEAR_INTR ; 
 scalar_t__ DAS16M1_CS ; 
 int IRQDATA ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int OVRUN ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *d)
{
	int status;
	struct comedi_device *dev = d;

	if (dev->attached == 0) {
		FUNC0(dev, "premature interrupt");
		return IRQ_HANDLED;
	}
	/*  prevent race with comedi_poll() */
	FUNC4(&dev->spinlock);

	status = FUNC2(dev->iobase + DAS16M1_CS);

	if ((status & (IRQDATA | OVRUN)) == 0) {
		FUNC0(dev, "spurious interrupt");
		FUNC5(&dev->spinlock);
		return IRQ_NONE;
	}

	FUNC1(dev, status);

	/* clear interrupt */
	FUNC3(0, dev->iobase + DAS16M1_CLEAR_INTR);

	FUNC5(&dev->spinlock);
	return IRQ_HANDLED;
}