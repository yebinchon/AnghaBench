#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ I8259A_IRQ_BASE ; 
 int /*<<< orphan*/  PIC_MASTER_CMD ; 
 int /*<<< orphan*/  PIC_SLAVE_CMD ; 
 int /*<<< orphan*/  i8259A_lock ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(unsigned int irq)
{
	unsigned int mask;
	unsigned long flags;
	int ret;

	irq -= I8259A_IRQ_BASE;
	mask = 1 << irq;
	FUNC1(&i8259A_lock, flags);
	if (irq < 8)
		ret = FUNC0(PIC_MASTER_CMD) & mask;
	else
		ret = FUNC0(PIC_SLAVE_CMD) & (mask >> 8);
	FUNC2(&i8259A_lock, flags);

	return ret;
}