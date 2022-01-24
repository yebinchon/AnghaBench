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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int adccon; scalar_t__ hwver; int /*<<< orphan*/  ai_stop_spinlock; scalar_t__ iobase1; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CMD_STARTED ; 
 int EINVAL ; 
 int /*<<< orphan*/  I8254_MODE0 ; 
 int /*<<< orphan*/  I8254_MODE1 ; 
 int PCI230_ADC_IM_DIF ; 
 int PCI230_ADC_IM_MASK ; 
 scalar_t__ PCI230_Z2_CT_BASE ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct comedi_device *dev,
				     struct comedi_subdevice *s,
				     unsigned int trig_num)
{
	unsigned long irqflags;

	if (trig_num != 0)
		return -EINVAL;

	FUNC1(&devpriv->ai_stop_spinlock, irqflags);
	if (FUNC3(AI_CMD_STARTED, &devpriv->state)) {
		unsigned int delayus;

		/* Trigger conversion by toggling Z2-CT2 output.  Finish
		 * with output high. */
		FUNC0(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, 2,
			       I8254_MODE0);
		FUNC0(devpriv->iobase1 + PCI230_Z2_CT_BASE, 0, 2,
			       I8254_MODE1);
		/* Delay.  Should driver be responsible for this?  An
		 * alternative would be to wait until conversion is complete,
		 * but we can't tell when it's complete because the ADC busy
		 * bit has a different meaning when FIFO enabled (and when
		 * FIFO not enabled, it only works for software triggers). */
		if (((devpriv->adccon & PCI230_ADC_IM_MASK)
		     == PCI230_ADC_IM_DIF)
		    && (devpriv->hwver == 0)) {
			/* PCI230/260 in differential mode */
			delayus = 8;
		} else {
			/* single-ended or PCI230+/260+ */
			delayus = 4;
		}
		FUNC2(&devpriv->ai_stop_spinlock, irqflags);
		FUNC4(delayus);
	} else {
		FUNC2(&devpriv->ai_stop_spinlock, irqflags);
	}

	return 1;
}