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
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {int adc_fifo_bits; scalar_t__ control_status; } ;

/* Variables and functions */
 scalar_t__ ADCMUX_CONT ; 
 int EOAIE ; 
 int INTE ; 
 scalar_t__ INT_ADCFIFO ; 
 scalar_t__ TRIG_CONTSTAT ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct comedi_device *dev,
			    struct comedi_subdevice *s)
{
	unsigned long flags;

	FUNC1(&dev->spinlock, flags);
	/*  disable interrupts */
	devpriv->adc_fifo_bits &= ~INTE & ~EOAIE;
	FUNC0(devpriv->adc_fifo_bits, devpriv->control_status + INT_ADCFIFO);
	FUNC2(&dev->spinlock, flags);

	/*  disable start trigger source and burst mode */
	FUNC0(0, devpriv->control_status + TRIG_CONTSTAT);
	/*  software pacer source */
	FUNC0(0, devpriv->control_status + ADCMUX_CONT);

	return 0;
}