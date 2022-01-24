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
typedef  int u32 ;
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int MXC_EXP_IO_BASE ; 
 int /*<<< orphan*/  PBC_INTMASK_SET_REG ; 
 int /*<<< orphan*/  PBC_INTSTATUS_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(u32 irq, struct irq_desc *desc)
{
	u32 imr_val;
	u32 int_valid;
	u32 expio_irq;

	imr_val = FUNC0(PBC_INTMASK_SET_REG);
	int_valid = FUNC0(PBC_INTSTATUS_REG) & imr_val;

	expio_irq = MXC_EXP_IO_BASE;
	for (; int_valid != 0; int_valid >>= 1, expio_irq++) {
		if ((int_valid & 1) == 0)
			continue;

		FUNC1(expio_irq);
	}
}