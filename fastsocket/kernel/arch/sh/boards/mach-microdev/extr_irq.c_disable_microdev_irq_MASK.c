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
struct TYPE_2__ {unsigned int fpgaIrq; int /*<<< orphan*/  mapped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  MICRODEV_FPGA_INTDSB_REG ; 
 unsigned int NUM_EXTERNAL_IRQS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* fpgaIrqTable ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	unsigned int fpgaIrq;

	if (irq >= NUM_EXTERNAL_IRQS)
		return;
	if (!fpgaIrqTable[irq].mapped)
		return;

	fpgaIrq = fpgaIrqTable[irq].fpgaIrq;

	/* disable interrupts on the FPGA INTC register */
	FUNC1(FUNC0(fpgaIrq), MICRODEV_FPGA_INTDSB_REG);
}