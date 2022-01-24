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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  CPLD_INT_MASK_REG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(uint32_t irq)
{
	uint16_t reg;
	uint32_t expio = FUNC0(irq);

	/* mask the interrupt */
	reg = FUNC1(CPLD_INT_MASK_REG);
	reg |= 1 << expio;
	FUNC2(reg, CPLD_INT_MASK_REG);
}