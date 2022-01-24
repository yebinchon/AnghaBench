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
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* read_subdev; struct comedi_subdevice* write_subdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {unsigned char int_en; unsigned char ier; int intr_running; int /*<<< orphan*/  isr_spinlock; scalar_t__ iobase1; int /*<<< orphan*/  intr_cpuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned char PCI230P2_INT_DAC ; 
 unsigned char PCI230_INT_ADC ; 
 unsigned char PCI230_INT_DISABLE ; 
 scalar_t__ PCI230_INT_SCE ; 
 scalar_t__ PCI230_INT_STAT ; 
 unsigned char PCI230_INT_ZCLK_CT1 ; 
 int /*<<< orphan*/  THISCPU ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *d)
{
	unsigned char status_int, valid_status_int;
	struct comedi_device *dev = (struct comedi_device *)d;
	struct comedi_subdevice *s;
	unsigned long irqflags;

	/* Read interrupt status/enable register. */
	status_int = FUNC1(devpriv->iobase1 + PCI230_INT_STAT);

	if (status_int == PCI230_INT_DISABLE) {
		return IRQ_NONE;
	}

	FUNC6(&devpriv->isr_spinlock, irqflags);
	valid_status_int = devpriv->int_en & status_int;
	/* Disable triggered interrupts.
	 * (Only those interrupts that need re-enabling, are, later in the
	 * handler).  */
	devpriv->ier = devpriv->int_en & ~status_int;
	FUNC2(devpriv->ier, devpriv->iobase1 + PCI230_INT_SCE);
	devpriv->intr_running = 1;
	devpriv->intr_cpuid = THISCPU;
	FUNC7(&devpriv->isr_spinlock, irqflags);

	/*
	 * Check the source of interrupt and handle it.
	 * The PCI230 can cope with concurrent ADC, DAC, PPI C0 and C3
	 * interrupts.  However, at present (Comedi-0.7.60) does not allow
	 * concurrent execution of commands, instructions or a mixture of the
	 * two.
	 */

	if ((valid_status_int & PCI230_INT_ZCLK_CT1) != 0) {
		s = dev->write_subdev;
		FUNC5(dev, s);
		FUNC0(dev, s);
	}

	if ((valid_status_int & PCI230P2_INT_DAC) != 0) {
		s = dev->write_subdev;
		FUNC4(dev, s);
		FUNC0(dev, s);
	}

	if ((valid_status_int & PCI230_INT_ADC) != 0) {
		s = dev->read_subdev;
		FUNC3(dev, s);
		FUNC0(dev, s);
	}

	/* Reenable interrupts. */
	FUNC6(&devpriv->isr_spinlock, irqflags);
	if (devpriv->ier != devpriv->int_en) {
		devpriv->ier = devpriv->int_en;
		FUNC2(devpriv->ier, devpriv->iobase1 + PCI230_INT_SCE);
	}
	devpriv->intr_running = 0;
	FUNC7(&devpriv->isr_spinlock, irqflags);

	return IRQ_HANDLED;
}