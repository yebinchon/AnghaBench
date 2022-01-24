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
struct egpio_info {int irqs_enabled; unsigned int irq_start; } ;

/* Variables and functions */
 struct egpio_info* FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	struct egpio_info *ei = FUNC0(irq);
	ei->irqs_enabled &= ~(1 << (irq - ei->irq_start));
	FUNC1("EGPIO mask %d %04x\n", irq, ei->irqs_enabled);
}