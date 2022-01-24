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
struct asic3 {unsigned int irq_base; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned int ASIC3_INTMASK_MASK0 ; 
 scalar_t__ ASIC3_INTR_BASE ; 
 scalar_t__ ASIC3_INTR_INT_MASK ; 
 unsigned int ASIC3_NUM_GPIOS ; 
 int FUNC0 (struct asic3*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct asic3*,scalar_t__,int) ; 
 struct asic3* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned int irq)
{
	struct asic3 *asic = FUNC2(irq);
	int regval;
	unsigned long flags;

	FUNC3(&asic->lock, flags);
	regval = FUNC0(asic,
				     ASIC3_INTR_BASE +
				     ASIC3_INTR_INT_MASK);

	regval |= (ASIC3_INTMASK_MASK0 <<
		   (irq - (asic->irq_base + ASIC3_NUM_GPIOS)));

	FUNC1(asic,
			     ASIC3_INTR_BASE +
			     ASIC3_INTR_INT_MASK,
			     regval);
	FUNC4(&asic->lock, flags);
}