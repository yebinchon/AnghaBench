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
struct fpga_irq {unsigned int base; unsigned short mask; int /*<<< orphan*/  sraddr; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 struct fpga_irq FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,struct irq_desc*) ; 
 struct irq_desc* irq_desc ; 

__attribute__((used)) static void FUNC3(unsigned int irq, struct irq_desc *desc)
{
	struct fpga_irq set = FUNC1(irq);
	unsigned short intv = FUNC0(set.sraddr);
	struct irq_desc *ext_desc;
	unsigned int ext_irq = set.base;

	intv &= set.mask;

	while (intv) {
		if (intv & 0x0001) {
			ext_desc = irq_desc + ext_irq;
			FUNC2(ext_irq, ext_desc);
		}
		intv >>= 1;
		ext_irq++;
	}
}