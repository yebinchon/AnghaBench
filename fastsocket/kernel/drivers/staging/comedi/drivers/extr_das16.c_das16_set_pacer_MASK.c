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
struct comedi_device {scalar_t__ iobase; } ;
struct TYPE_2__ {int /*<<< orphan*/  divisor2; int /*<<< orphan*/  divisor1; int /*<<< orphan*/  clockbase; } ;

/* Variables and functions */
 scalar_t__ DAS16_CNTR0_DATA ; 
 int TRIG_ROUND_MASK ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC2(struct comedi_device *dev, unsigned int ns,
				    int rounding_flags)
{
	FUNC0(devpriv->clockbase, &(devpriv->divisor1),
				       &(devpriv->divisor2), &ns,
				       rounding_flags & TRIG_ROUND_MASK);

	/* Write the values of ctr1 and ctr2 into counters 1 and 2 */
	FUNC1(dev->iobase + DAS16_CNTR0_DATA, 0, 1, devpriv->divisor1, 2);
	FUNC1(dev->iobase + DAS16_CNTR0_DATA, 0, 2, devpriv->divisor2, 2);

	return ns;
}