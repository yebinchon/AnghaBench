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
 int /*<<< orphan*/  PIC_MASTER_CMD ; 
 int /*<<< orphan*/  PIC_SLAVE_CMD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(unsigned int irq)
{
	int value;
	int irqmask = 1 << irq;

	if (irq < 8) {
		FUNC1(0x0B, PIC_MASTER_CMD);	/* ISR register */
		value = FUNC0(PIC_MASTER_CMD) & irqmask;
		FUNC1(0x0A, PIC_MASTER_CMD);	/* back to the IRR register */
		return value;
	}
	FUNC1(0x0B, PIC_SLAVE_CMD);	/* ISR register */
	value = FUNC0(PIC_SLAVE_CMD) & (irqmask >> 8);
	FUNC1(0x0A, PIC_SLAVE_CMD);	/* back to the IRR register */
	return value;
}