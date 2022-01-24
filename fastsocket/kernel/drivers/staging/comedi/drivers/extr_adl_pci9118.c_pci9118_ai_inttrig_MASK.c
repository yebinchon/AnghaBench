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
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_4__ {unsigned int ai_inttrig_start; int ai_do; int /*<<< orphan*/  AdControlReg; int /*<<< orphan*/  ai_divisor2; int /*<<< orphan*/  ai_divisor1; int /*<<< orphan*/  AdFunctionReg; int /*<<< orphan*/  IntControlReg; int /*<<< orphan*/  ai12_startstop; } ;
struct TYPE_3__ {int /*<<< orphan*/ * inttrig; } ;

/* Variables and functions */
 int /*<<< orphan*/  AdControl_SoftG ; 
 int EINVAL ; 
 scalar_t__ PCI9118_ADCNTRL ; 
 scalar_t__ PCI9118_ADFUNC ; 
 scalar_t__ PCI9118_INTCTRL ; 
 int /*<<< orphan*/  START_AI_INT ; 
 TYPE_2__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct comedi_device *dev,
			      struct comedi_subdevice *s, unsigned int trignum)
{
	if (trignum != devpriv->ai_inttrig_start)
		return -EINVAL;

	devpriv->ai12_startstop &= ~START_AI_INT;
	s->async->inttrig = NULL;

	FUNC0(devpriv->IntControlReg, dev->iobase + PCI9118_INTCTRL);
	FUNC0(devpriv->AdFunctionReg, dev->iobase + PCI9118_ADFUNC);
	if (devpriv->ai_do != 3) {
		FUNC1(dev, devpriv->ai_do, devpriv->ai_divisor1,
			    devpriv->ai_divisor2);
		devpriv->AdControlReg |= AdControl_SoftG;
	}
	FUNC0(devpriv->AdControlReg, dev->iobase + PCI9118_ADCNTRL);

	return 1;
}