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
struct comedi_device {int /*<<< orphan*/  spinlock; } ;
struct TYPE_2__ {int adc_control1_bits; scalar_t__ main_iobase; } ;

/* Variables and functions */
 scalar_t__ ADC_CONTROL0_REG ; 
 scalar_t__ ADC_CONTROL1_REG ; 
 int ADC_DMA_DISABLE_BIT ; 
 int ADC_GATE_LEVEL_BIT ; 
 int ADC_SOFT_GATE_BITS ; 
 int ADC_SW_GATE_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct comedi_device*) ; 
 TYPE_1__* FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	unsigned long flags;

	FUNC0(dev);

	FUNC2(&dev->spinlock, flags);
	FUNC1(dev)->adc_control1_bits &= ~ADC_SW_GATE_BIT;
	FUNC4(FUNC1(dev)->adc_control1_bits,
	       FUNC1(dev)->main_iobase + ADC_CONTROL1_REG);
	FUNC3(&dev->spinlock, flags);

	/* disable pacing, triggering, etc */
	FUNC4(ADC_DMA_DISABLE_BIT | ADC_SOFT_GATE_BITS | ADC_GATE_LEVEL_BIT,
	       FUNC1(dev)->main_iobase + ADC_CONTROL0_REG);
}