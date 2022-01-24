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
 scalar_t__ HW_ICOLL_LEVELACK ; 
 scalar_t__ HW_ICOLL_STAT ; 
 scalar_t__ HW_ICOLL_VECTOR ; 
 scalar_t__ REGS_ICOLL_BASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	/* Tell ICOLL to release IRQ line */
	FUNC1(0, REGS_ICOLL_BASE + HW_ICOLL_VECTOR);

	/* ACK current interrupt */
	FUNC1(0x01 /* BV_ICOLL_LEVELACK_IRQLEVELACK__LEVEL0 */,
			REGS_ICOLL_BASE + HW_ICOLL_LEVELACK);

	/* Barrier */
	(void)FUNC0(REGS_ICOLL_BASE + HW_ICOLL_STAT);
}