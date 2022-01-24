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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FPGA_PIC_IRQCFG ; 
#define  IRQ_TYPE_LEVEL_HIGH 129 
#define  IRQ_TYPE_LEVEL_LOW 128 
 scalar_t__ IRQ_TYPE_NONE ; 
 unsigned int IRQ_TYPE_SENSE_MASK ; 
 TYPE_1__* fpga_irqs ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  socrates_fpga_pic_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(unsigned int virq,
		unsigned int flow_type)
{
	unsigned long flags;
	unsigned int hwirq;
	int polarity;
	u32 mask;

	hwirq = FUNC0(virq);

	if (fpga_irqs[hwirq].type != IRQ_TYPE_NONE)
		return -EINVAL;

	switch (flow_type & IRQ_TYPE_SENSE_MASK) {
	case IRQ_TYPE_LEVEL_HIGH:
		polarity = 1;
		break;
	case IRQ_TYPE_LEVEL_LOW:
		polarity = 0;
		break;
	default:
		return -EINVAL;
	}
	FUNC3(&socrates_fpga_pic_lock, flags);
	mask = FUNC1(FPGA_PIC_IRQCFG);
	if (polarity)
		mask |= (1 << hwirq);
	else
		mask &= ~(1 << hwirq);
	FUNC2(FPGA_PIC_IRQCFG, mask);
	FUNC4(&socrates_fpga_pic_lock, flags);
	return 0;
}