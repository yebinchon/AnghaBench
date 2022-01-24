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
struct TYPE_2__ {int adc_fifo_bits; int ao_control_bits; scalar_t__ control_status; } ;

/* Variables and functions */
 int DACEN ; 
 scalar_t__ DAC_CSR ; 
 int DAC_PACER_MASK ; 
 int DAEMIE ; 
 int DAHFIE ; 
 scalar_t__ INT_ADCFIFO ; 
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
	devpriv->adc_fifo_bits &= ~DAHFIE & ~DAEMIE;
	FUNC0(devpriv->adc_fifo_bits, devpriv->control_status + INT_ADCFIFO);

	/*  disable output */
	devpriv->ao_control_bits &= ~DACEN & ~DAC_PACER_MASK;
	FUNC0(devpriv->ao_control_bits, devpriv->control_status + DAC_CSR);
	FUNC2(&dev->spinlock, flags);

	return 0;
}