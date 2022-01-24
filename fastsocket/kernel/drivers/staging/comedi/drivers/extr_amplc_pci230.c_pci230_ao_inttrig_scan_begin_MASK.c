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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int hwver; int /*<<< orphan*/  ao_stop_spinlock; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AO_CMD_STARTED ; 
 int EINVAL ; 
 scalar_t__ PCI230P2_DACSWTRIG ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*,struct comedi_subdevice*) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,struct comedi_subdevice*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
					struct comedi_subdevice *s,
					unsigned int trig_num)
{
	unsigned long irqflags;

	if (trig_num != 0)
		return -EINVAL;

	FUNC3(&devpriv->ao_stop_spinlock, irqflags);
	if (FUNC5(AO_CMD_STARTED, &devpriv->state)) {
		/* Perform scan. */
		if (devpriv->hwver < 2) {
			/* Not using DAC FIFO. */
			FUNC4(&devpriv->ao_stop_spinlock,
					       irqflags);
			FUNC2(dev, s);
			FUNC0(dev, s);
		} else {
			/* Using DAC FIFO. */
			/* Read DACSWTRIG register to trigger conversion. */
			FUNC1(dev->iobase + PCI230P2_DACSWTRIG);
			FUNC4(&devpriv->ao_stop_spinlock,
					       irqflags);
		}
		/* Delay.  Should driver be responsible for this? */
		/* XXX TODO: See if DAC busy bit can be used. */
		FUNC6(8);
	}

	return 1;
}