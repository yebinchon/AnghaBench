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
struct comedi_device {int /*<<< orphan*/  irq; scalar_t__ iobase; int /*<<< orphan*/  attached; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int int816_mode; scalar_t__ irq_was_now_closed; int /*<<< orphan*/  irq_blocked; int /*<<< orphan*/  irq_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  INT_TYPE_AI1_DMA 131 
#define  INT_TYPE_AI1_INT 130 
#define  INT_TYPE_AI3_DMA 129 
#define  INT_TYPE_AI3_INT 128 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ PCL816_CLRINT ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,char*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC2 (int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *d)
{
	struct comedi_device *dev = d;
	FUNC0("<I>");

	if (!dev->attached) {
		FUNC1(dev, "premature interrupt");
		return IRQ_HANDLED;
	}

	switch (devpriv->int816_mode) {
	case INT_TYPE_AI1_DMA:
	case INT_TYPE_AI3_DMA:
		return FUNC2(irq, d);
	case INT_TYPE_AI1_INT:
	case INT_TYPE_AI3_INT:
		return FUNC3(irq, d);
	}

	FUNC4(0, dev->iobase + PCL816_CLRINT);	/* clear INT request */
	if ((!dev->irq) | (!devpriv->irq_free) | (!devpriv->irq_blocked) |
	    (!devpriv->int816_mode)) {
		if (devpriv->irq_was_now_closed) {
			devpriv->irq_was_now_closed = 0;
			/*  comedi_error(dev,"last IRQ.."); */
			return IRQ_HANDLED;
		}
		FUNC1(dev, "bad IRQ!");
		return IRQ_NONE;
	}
	FUNC1(dev, "IRQ from unknow source!");
	return IRQ_NONE;
}