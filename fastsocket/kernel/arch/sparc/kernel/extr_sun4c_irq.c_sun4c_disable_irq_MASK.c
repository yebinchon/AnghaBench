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
typedef  unsigned char current_mask ;

/* Variables and functions */
 int NR_IRQS ; 
 int /*<<< orphan*/  SUN4C_INT_E1 ; 
 int /*<<< orphan*/  SUN4C_INT_E10 ; 
 int /*<<< orphan*/  SUN4C_INT_E14 ; 
 int /*<<< orphan*/  SUN4C_INT_E8 ; 
 int /*<<< orphan*/  interrupt_enable ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned char FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(unsigned int irq_nr)
{
	unsigned long flags;
	unsigned char current_mask, new_mask;
    
	FUNC1(flags);
	irq_nr &= (NR_IRQS - 1);
	current_mask = FUNC2(interrupt_enable);
	switch(irq_nr) {
	case 1:
		new_mask = ((current_mask) & (~(SUN4C_INT_E1)));
		break;
	case 8:
		new_mask = ((current_mask) & (~(SUN4C_INT_E8)));
		break;
	case 10:
		new_mask = ((current_mask) & (~(SUN4C_INT_E10)));
		break;
	case 14:
		new_mask = ((current_mask) & (~(SUN4C_INT_E14)));
		break;
	default:
		FUNC0(flags);
		return;
	}
	FUNC3(new_mask, interrupt_enable);
	FUNC0(flags);
}