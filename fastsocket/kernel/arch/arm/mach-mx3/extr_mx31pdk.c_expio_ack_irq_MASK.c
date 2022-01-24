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
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPLD_INT_RESET_REG ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(uint32_t irq)
{
	uint32_t expio = FUNC0(irq);

	/* clear the interrupt status */
	FUNC1(1 << expio, CPLD_INT_RESET_REG);
	FUNC1(0, CPLD_INT_RESET_REG);
	/* mask the interrupt */
	FUNC2(irq);
}