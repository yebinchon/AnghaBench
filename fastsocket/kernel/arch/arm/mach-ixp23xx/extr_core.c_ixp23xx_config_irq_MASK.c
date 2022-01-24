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
typedef  enum ixp23xx_irq_type { ____Placeholder_ixp23xx_irq_type } ixp23xx_irq_type ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_VALID ; 
#define  IXP23XX_IRQ_EDGE 129 
#define  IXP23XX_IRQ_LEVEL 128 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  handle_level_irq ; 
 int /*<<< orphan*/  ixp23xx_irq_edge_chip ; 
 int /*<<< orphan*/  ixp23xx_irq_level_chip ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(unsigned int irq, enum ixp23xx_irq_type type)
{
	switch (type) {
	case IXP23XX_IRQ_LEVEL:
		FUNC0(irq, &ixp23xx_irq_level_chip);
		FUNC2(irq, handle_level_irq);
		break;
	case IXP23XX_IRQ_EDGE:
		FUNC0(irq, &ixp23xx_irq_edge_chip);
		FUNC2(irq, handle_edge_irq);
		break;
	}
	FUNC1(irq, IRQF_VALID);
}