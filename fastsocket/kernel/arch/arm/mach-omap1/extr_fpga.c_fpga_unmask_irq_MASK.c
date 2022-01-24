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
 int /*<<< orphan*/  INNOVATOR_FPGA_IMR2 ; 
 int /*<<< orphan*/  OMAP1510_FPGA_IMR_HI ; 
 int /*<<< orphan*/  OMAP1510_FPGA_IMR_LO ; 
 scalar_t__ OMAP_FPGA_IRQ_BASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	irq -= OMAP_FPGA_IRQ_BASE;

	if (irq < 8)
		FUNC1((FUNC0(OMAP1510_FPGA_IMR_LO) | (1 << irq)),
		     OMAP1510_FPGA_IMR_LO);
	else if (irq < 16)
		FUNC1((FUNC0(OMAP1510_FPGA_IMR_HI)
			      | (1 << (irq - 8))), OMAP1510_FPGA_IMR_HI);
	else
		FUNC1((FUNC0(INNOVATOR_FPGA_IMR2)
			      | (1 << (irq - 16))), INNOVATOR_FPGA_IMR2);
}