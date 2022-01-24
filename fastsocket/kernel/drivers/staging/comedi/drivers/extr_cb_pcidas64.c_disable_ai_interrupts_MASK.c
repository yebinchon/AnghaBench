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
struct TYPE_2__ {int intr_enable_bits; scalar_t__ main_iobase; } ;

/* Variables and functions */
 int ADC_INTR_SRC_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EN_ADC_ACTIVE_INTR_BIT ; 
 int EN_ADC_DONE_INTR_BIT ; 
 int EN_ADC_INTR_SRC_BIT ; 
 int EN_ADC_OVERRUN_BIT ; 
 int EN_ADC_STOP_INTR_BIT ; 
 scalar_t__ INTR_ENABLE_REG ; 
 TYPE_1__* FUNC1 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct comedi_device *dev)
{
	unsigned long flags;

	FUNC2(&dev->spinlock, flags);
	FUNC1(dev)->intr_enable_bits &=
	    ~EN_ADC_INTR_SRC_BIT & ~EN_ADC_DONE_INTR_BIT &
	    ~EN_ADC_ACTIVE_INTR_BIT & ~EN_ADC_STOP_INTR_BIT &
	    ~EN_ADC_OVERRUN_BIT & ~ADC_INTR_SRC_MASK;
	FUNC4(FUNC1(dev)->intr_enable_bits,
	       FUNC1(dev)->main_iobase + INTR_ENABLE_REG);
	FUNC3(&dev->spinlock, flags);

	FUNC0("intr enable bits 0x%x\n", FUNC1(dev)->intr_enable_bits);
}