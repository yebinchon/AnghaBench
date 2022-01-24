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
struct irq_desc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PA_CPLD_ST ; 
 unsigned int SE7343_FPGA_IRQ_BASE ; 
 int SE7343_FPGA_IRQ_NR ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,struct irq_desc*) ; 
 struct irq_desc* irq_desc ; 

__attribute__((used)) static void FUNC2(unsigned int irq, struct irq_desc *desc)
{
	unsigned short intv = FUNC0(PA_CPLD_ST);
	struct irq_desc *ext_desc;
	unsigned int ext_irq = SE7343_FPGA_IRQ_BASE;

	intv &= (1 << SE7343_FPGA_IRQ_NR) - 1;

	while (intv) {
		if (intv & 1) {
			ext_desc = irq_desc + ext_irq;
			FUNC1(ext_irq, ext_desc);
		}
		intv >>= 1;
		ext_irq++;
	}
}